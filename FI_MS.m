function ret = FI_MS(E_c, E_v, E_f)
% poziom samoistny w półprzewodniku
E_i = E_I(E_v, E_c);
% potencjał fermiego (dodatni dla podłoża typu p)
fi_F = (E_i-E_f)./C.q;
% praca wyjścia z półprzewodnika
fi_s = C.chi_s + (E_c-E_i) + (C.q*fi_F);
% różnica prac wyjścia metal-półprzewodnik
ret = (C.fi_M - fi_s)./C.q;
end