function ret = J_Z(E_Fp,fi, x)

F_max = max(fi);

e_c = -fi.*C.q;
e_v = e_c - C.E_G;
f_V = 1 ./(1 + (exp((e_v-E_Fp)/(C.k_B.*C.T))));
g_btb = G_BTBT(C.E_G, F_max);

Y = g_btb.*(f_V);

% Model pr¹du tunelowego zenera
ret = C.q .* trapz(x,Y);

end