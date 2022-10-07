clear all
close all

n0=1.5;
n2=1;
Na=1.589089;
Nb=1.560758;
Nmax=Na;
ro=0;
green=0.543; %[um]
red=0.6328; %[um]

n1=sqrt(1.1*Nmax^2);
psi=@(m,N,n1)m*pi + atan((n1/n0).^ro*sqrt((N.^2-n0.^2)/(n1.^2-N.^2)))+atan((n1/n2).^ro*sqrt((N.^2-n2.^2)/(n1.^2-N.^2)));

%zielony [um]'
for i=1:10
    n1 = sqrt((Na.^2*psi(5,Nb,n1).^2-Nb.^2*psi(0,Na,n1).^2)/(psi(5,Nb,n1).^2-psi(0,Na,n1).^2));
end
W1 = psi(0,Na,n1)/sqrt(n1.^2-Na.^2)/(2*pi/green);
W2 = psi(5,Nb,n1)/sqrt(n1.^2-Na.^2)/(2*pi/green);

%czerwony [um]'
Na = 1.576231;
Nb = 1.551545;
n1 = sqrt(1.1*Nmax.^2);
for i=1:10
    n1 = sqrt((Na.^2*psi(5,Nb,n1).^2-Nb.^2*psi(0,Na,n1).^2)/(psi(5,Nb,n1).^2-psi(0,Na,n1).^2));
end
W1 = psi(0,Na,n1)/sqrt(n1.^2-Na.^2)/(2*pi/red);
W2 = psi(4,Nb,n1)/sqrt(n1.^2-Na.^2)/(2*pi/red);