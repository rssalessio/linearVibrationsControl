clear all, close all

load kalman;

[plant, dof] = sysBuilder([2,2], ['m', 'l'], {'x1', 'x2'}, 0);
plant = ss(plant);

damp(plant)/2/pi

%% Design Controller
plant_design = plant(2,1);

% % MED-LOW
w = 0.5;
Ws = tf(makeweight(10, 2*pi*w, 0.9));
Wt = tf(makeweight(0.9, 2*pi*w, 10));
Wk = tf(makeweight(0.9, 2*pi*w, 5));

% LOW-HIGH
% w = 0.5;
% Ws = tf(makeweight(20, 2*pi*w, 0.9));
% Wt = tf(makeweight(0.9, 2*pi*w, 20));
% Wk = tf(makeweight(0.9, 2*pi*w, 20));

[Hinf, CL, GAM, INFO] = mixsyn(plant_design, Ws, Wk, Wt);

figure; margin(series(Hinf, plant_design)); grid;
figure; bodemag(feedback(series(Hinf,plant_design), 1)); grid; title('T');
figure; step(feedback(series(Hinf,plant_design), 1))

%% Integrator
Hinf_zpk = zpk(Hinf);
[min,ind] = min(Hinf_zpk.p{1});
Hinf_zpk.p{1} = [Hinf_zpk.p{1}(1:ind-1); 0; Hinf_zpk.p{1}(ind+1:8)];

figure; hold on;
bode(Hinf); bode(Hinf_zpk); legend('Hinf', 'Hinf_integrator');

Hinf = ss(Hinf_zpk);

%% Reduce
Hinf_red = reduce(Hinf, 5);

figure; hold on;
bode(Hinf); bode(Hinf_red); legend('Hinf', 'Hinf reduced');

Hinf = ss(Hinf_red);
figure; step(feedback(series(Hinf,plant_design), 1))

%% Stabilization Hinf
figure; rlocus(Hinf);