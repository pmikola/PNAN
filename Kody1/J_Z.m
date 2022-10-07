function ret = J_Z(E_Fp,fi, x)


e_c = -fi.*C.q; % fi jest w zakresie od 0 do xz, wiec tu s¹ wszystkie poziomy energetyczne od 0 do xz
f_V = 1 ./(1 + (exp((e_c-E_Fp)/(C.k_B.*C.T)))); % tu badamy prawdopodobienstwo przejscia dla tych poziomow energetycznych (z valencyjnego do conduct czyli ec


% tu dla kazdego poziomu energetycznego znajdziemy Fmax, czyli maksymalna
% wartosc potencjalu w obszarze x1 (czyli przeciecie z e_c) i x2 (czyli
% przeciecie z e_v)
F_max = [];

max_of_fi = max(fi);
for f = fi
    m = f - C.E_G*C.q; %potencjal jest rosnacy, wiemy tez, ze jezeli 
    % przejedziemy palcem od lewej do prawej na diagramie (od x1 do x2), to w x2 potencjal jest wiekszy o E_G
    % (bo poziom energetyczny na x1 jest taki sam jak x_2. czyli rowny Ec,
    % a wiemy ze Ec jest wieksze o E_G od Ev
    if m > max_of_fi % nie moze byc oczywiscie wiecej niz maksymalna wartosc potencjalu ever gdziekolwiek w polprzewodniku
        m = max_of_fi;
    end
    F_max = [F_max, m]; % tak obliczona wartosc maksymalna jest dodawana do F_max. Na koniec kazdemu e_c (czyli kazdemu x, po ktorym calkujemy de facto tez, bo e_c bylo liczone dla kazdego x) bedzie przyporzadkowane kazde F_max
end

g_btb = G_BTBT(C.E_G, F_max);

Y = g_btb.*(f_V);

% Model pr¹du tunelowego zenera
ret = C.q .* trapz(x,Y);

end