function [t, s1,s2,s3,s4,s5,s6] = plots(gr, n)
    
    if nargin == 0
        n = 3;
        gr = 0;
    end
    
    if nargin == 1
        n = 3;
    end
    
    [s1, s2, s3, s4, s5, s6] = textread('data0000.txt', '%f %f %f %f %f %f');
    
    len = length(s1)-1;
    
    if exist('data0001.txt', 'file')
        [s11, s22, s33, s44, s55, s66] = textread('data0001.txt', '%f %f %f %f %f %f');
        s1 = [s1;s11];
        s2 = [s2;s22];
        s3 = [s3;s33];
        s4 = [s4;s44];
        s5 = [s5;s55];
        s6 = [s6;s66];
        len = length(s1)-1;
    end
    
    ts = 1/200; %sampling frequency 100Hz
    t = 0:ts:len*ts;
    
    figure;
    subplot 311; plot(t,s1); if gr grid; end
    subplot 312; plot(t,s2); if gr grid; end
    subplot 313; plot(t,s3); if gr grid; end
    
    if n > 3
        figure;
        subplot 311; plot(t,s4); if gr grid; end
        subplot 312; plot(t,s5); if gr grid; end
        subplot 313; plot(t,s6); if gr grid; end
    end
    
end