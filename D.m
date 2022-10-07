function ret = D(fi_S)

% szerokosc warstwy zaporowej w obszarze typu p
ret = sqrt(((2.*C.eps_s)/(C.q.*C.N_A)).*abs(fi_S));

end