function ret = FI_S(U_g, U_fb)

c = 2 * C.eps_s * C.q * C.N_A;
a = U_fb - U_g;
% potencjał powierzchniowy fis > 0
ret = 0.5 * abs((sqrt(c^2 - 4*a*c*C.c_ox^2)/(C.c_ox^2) - 2*a + c/(C.c_ox^2)));

end