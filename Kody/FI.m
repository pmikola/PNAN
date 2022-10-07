function ret = FI(d,x)
% rozk³ad potencja³u fi po x
% Przybli¿enie zubo¿enia daj¹ce paraboliczny kszta³t potencja³u fi (oraz
% krawêdzi pasm energetycznych Ec(x) = -qfi, Ev(x) = Ec(x) - Eg w warstwie w obszarze zubo¿onym w zakresie
% dodatnich wartoœci potencja³u powierzchniowego fi_s > 0, czyli w zakresie napiêæ bramki
% wiêkszych od napiêcia p³askich pasm Uf > Ufb

        ret = ((C.q.*C.N_A)./(2.*C.eps_s)).*((d-x).^2);

end

