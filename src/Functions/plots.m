function [t, s1,s2,s3,s4,s5,s6] = plots(n,Ts)
    
    if nargin == 0
        n = 3;
        Ts=1/200;
    end
    
    if nargin == 1
        Ts=1/200;
    end
    
    [t,s1,s2,s3,s4,s5,s6] = reads(Ts);
    tmin = min(t);
    tmax = max(t);
    lim = [tmin,tmax];
    
    figure;
    subplot 311; plot(t,s1); hold on; grid; hold on;
    ylabel('Voltage [V]');
    xlabel('Seconds [s]'); xlim(lim);
    
    subplot 312; plot(t,s2); hold on; grid; hold on;
    ylabel('Current [A]');
    xlabel('Seconds [s]'); xlim(lim);
    
    subplot 313; plot(t,s3); hold on; grid; hold on;
    ylabel('Cart pos. [cm]');
    xlabel('Seconds [s]'); xlim(lim);
    
    
    if n > 3
        figure;
        subplot 311; plot(t,s4); hold on; grid; hold on;
        xlabel('Seconds [s]'); xlim(lim);

        subplot 312; plot(t,s5); hold on; grid; hold on;
        xlabel('Seconds [s]'); xlim(lim);

        subplot 313; plot(t,s6); hold on; grid; hold on;
        xlabel('Seconds [s]'); xlim(lim);
    end
    
end