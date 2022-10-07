function ret = E_I(E_V, E_C)

ret = ((E_V + E_C) ./ 2) + (C.k_B*C.T)./(2*C.q) * log(C.N_V./C.N_C);
end

