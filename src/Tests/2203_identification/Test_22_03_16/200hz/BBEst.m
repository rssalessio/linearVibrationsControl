function [REst, W, G2Gain,C, XI] = BBEst()
    [t,v,i,x]=reads();
    i = lowPassFilter(i, 5, 4, 1, 1/200);
    i1 = find(x>50,1)-1;
    i2 = 0;%find(x(i1:end)<0, 1);
    i(1:i1)=0;
    v(1:i1)=0;
    x(1:i1)=0;
    opt = tfestOptions('InitMethod','all','InitialCondition','zero', 'Focus','simulation');
    G1 = tfest(iddata(i,v,1/200),1);
    REst = dcgain(G1);
    
    G2 = tfest(iddata(x,v,1/200),2,0,opt);
    W = unique(abs(pole(G2)));
    G2Gain = dcgain(G2);
    C = G2.den(2);
    XI = C/(2*W);
    
end