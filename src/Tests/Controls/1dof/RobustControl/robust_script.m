G=sysBuilder(2,'l',{'i','x1'});

C =  ltiblock.pid('C','pid');
AP = AnalysisPoint('dLoad');
CL0 = feedback(AP*G(2)*C,1);
CL0.InputName = 'r';
CL0.OutputName = 'x';


R1 = TuningGoal.Tracking('r','x',1);
R2 = TuningGoal.ControllerPoles('C',0,0,100);
R3 = TuningGoal.Overshoot('r','x', 5);
R4 = TuningGoal.Rejection('x',10);
R4.Focus =[0,5];

opt = systuneOptions('RandomStart',2);
rng('shuffle'), [CL,fSoft] = systune(CL0,[R1 R2],opt);

showTunable(CL)

figure, step(usample(CL,30),getNominal(CL),3)
title('Load disturbance rejection')
legend('Sampled uncertainty','Nominal')
%%
Kp=-0.167;
Ki=-5.38;
Kd = -0.0468;
Tf = 0.00958;

s=tf('s');
C=Kp+Ki/s+Kd*s/(Tf*s+1);

figure;
bode(C*sysBuilder(2,'l',{'i','x1'})); hold on;
bode(C*sysBuilder(2,'m',{'i','x1'})); hold on;
bode(C*sysBuilder(2,'h',{'i','x1'})); hold on;