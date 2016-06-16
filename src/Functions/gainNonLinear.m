function y = gainNonLinear(v)

    i1= v<0;
    i2 = v>= 0;
    
    g1=-0.21-1.1397.*(v(i1))-0.2756.*(v(i1).^2)-0.0226.*(v(i1).^3);
    g2=1.0580-0.4314.*v(i2) +0.2060.*(v(i2).^2)-0.0240.*(v(i2).^3);
    
    v(i1)= v(i1).*g1;
    v(i2)=v(i2).*g2;
    y=v;
%v>0 0.6564 + 0.1712v ? 0.0317v 2 + 0.0044v 
%v<0 ?0.21 ? 1.1397v ? 0.2756v 2 ? 0.0226v 
end