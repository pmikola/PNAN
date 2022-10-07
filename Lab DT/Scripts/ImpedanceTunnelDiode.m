C = 13 *10^-12;
rd = 131;
rs = .52;
L = 0.5*10^-9;

fstart=1;
fstep=1000;
fstop=5*10^9;
f=fstart:fstep:fstop;
npoint=fstop/fstep;

w = 2*pi*f;
Zr=rd/(1+(w*C*rd)^2) + rs;
Zx=((j*w)*(((-C)*rd^2)/(1+(w*C*rd)^2))+L);
Z = Zx+Zr;

i=1;
h=1;

while f[i]<=npoint
    w = 2*pi*f;
    Zr=rd/(1+(w*C*rd)^2) + rs;
    Zx=((j*w)*(((-C)*rd^2)/(1+(w*C*rd)^2))+L);
    Z=Zx+Zr;
    f[i] = f[i-1]+fstep;
    f
    i+1;
end
plot(Z,f);
    
