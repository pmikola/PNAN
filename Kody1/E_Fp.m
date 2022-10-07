function ret = E_Fp()

fermiFun = @(e_fp)(fermi(1/2,  (-e_fp - C.E_G)./(C.k_B*C.T))  );
expFun = @(e_fp)(exp((-C.E_G + C.dE_a - e_fp)./(C.k_B*C.T)));

target_fun = @(e_fp)(C.N_V * fermiFun(e_fp) - C.N_A / (2 + expFun(e_fp)));
ret = MY_ZERO(target_fun, [0, -1e-17], 1);
end