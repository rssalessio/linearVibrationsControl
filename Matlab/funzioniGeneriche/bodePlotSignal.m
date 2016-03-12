function [] = bodePlotSignal(x,t)
%   BODEPLOTSIGNAL - assumes the signal is generated by an impulse filtered
%   by a filter G(S). Thus X(s)=G(s). The bode plot of G is shown
    T = max(t)-min(t);
    Ts = t(2)-t(1);
    Fs = 1/Ts;
    [m,p,f] = fourierCoefficients(x,T);
    bodePlotFromFourier(m,p,f,Fs);
end