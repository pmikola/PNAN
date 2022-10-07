function ret = G_BTBT(E_G, F_max)

mantissa = 0.5*C.q^2*sqrt(C.m_r)*F_max.^2./(pi*C.h_red.^2*sqrt(E_G));
exponent = -0.5*pi*sqrt(C.m_r)*E_G.^(3/2)./(C.q*C.h_red*F_max)/1e8;

ret = mantissa * exp(exponent);
end