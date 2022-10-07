IUArray = [
0, 0;
1, 0.00012;
0.5, 0.00009;
0.3, 0.00012;
0.1, 0.001;
0.15 0.0009;
1.2, 0.001;
1.3, 0.0012];

plotIUGraph(IUArray);
[I_p, U_p, I_v, U_v, U_Fp] = getEsakiParameters(IUArray)
Ratio_I_pI_v = I_p./I_v
r_d_sr = (U_v - U_p) ./ (I_v - I_p)

r_s = 2.0;
C_j = 25e-12;
fr = f_r(r_d_sr, r_s, C_j)