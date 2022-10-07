function ret = FI(d,x)
% rozk�ad potencja�u fi po x
% Przybli�enie zubo�enia daj�ce paraboliczny kszta�t potencja�u fi (oraz
% kraw�dzi pasm energetycznych Ec(x) = -qfi, Ev(x) = Ec(x) - Eg w warstwie w obszarze zubo�onym w zakresie
% dodatnich warto�ci potencja�u powierzchniowego fi_s > 0, czyli w zakresie napi�� bramki
% wi�kszych od napi�cia p�askich pasm Uf > Ufb

        ret = ((C.q.*C.N_A)./(2.*C.eps_s)).*((d-x).^2);

end

