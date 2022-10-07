%% Obliczenie poziomu Efp:
e_fp = E_Fp();

%% Obliczenie napi�cia p�askich pasm:
e_c = 0; % nasz punkt odniesienia, patrz na rysunku Ec jest rowne 0
fi_ms = FI_MS(e_c, -C.E_G, e_fp); % E_V jest przesuni�te w d� o przerw� zabronion�, czyli jest r�wne Ec-Eg = 0 - Eg = -Eg
u_fb = U_FB(fi_ms);
    
%% Obliczenie pr�du dla r�nych warto�ci napi�cia na bramce    
u_g = u_fb:0.001: 5*u_fb; % spe�niamy warunek ze u_g wieksze niz napiecie plaskich pasm
prady = [];
for u = u_g
    fi_s = FI_S(u, u_fb); % liczymy potencja� przypowierzchniowy
    d = D(fi_s); % d �atwo policzy�

    x = 0:1/1000*d:d; % zakres od granicy ox - si do d
    fi = FI(d, x); % dla tego zakresu liczymy rozklad potencjalu
    EC = E_C(fi)/C.q;
    EV = (E_C(fi) - C.E_G)/C.q;
    %plot(x, fi); %- ODKOMENTUJ T� ORAZ
    %hold on %- T� LINIJK�
    %pause %- I T�, TO KLIKAJ�C ENTER NA KONSOLI ZOBACZYSZ JAK SI� ZMIENIA
    %ROZK�AD WRAZ ZE ZWI�KSZANIEM SI� U_G
   
    
    % tu jest szukanie xz:
    % xz jest zdefiniowane jako taka wartosc przemieszczenia od granicy
    % ox-si, �e warto�� kraw�dzi pasma przewodnictwa jest rowna warto�ci
    % kraw�dzi pasma walencyjnego w du�ym oddaleniu (nasze EV, ktore jest
    % r�wne -Eg de facto). Find z parametrem (1, 'first') dziala tak ze znajduje JEDN� i PIERWSZ� warto��
    % w�a�nie Ec ( wzor na Ec(x)=-qfi jest zaraz w punkcie pierwszym
    % polecenia), kt�ra jest wi�ksza od Ev daleko od granicy ox-si czyli -Eg
    idx = find(-fi * C.q >= -C.E_G, 1, 'first');
  
    % powi�kszamy nasze wyniki pr�d�w o kolejn� warto��, dla tego u bramki
    % J_Z znaj�c e_fp korzysta z g_btbt i calkuje sobie fi po x (st�d
    % trzeba podac zakres x dla danego zakresu fi.
    prady = [prady, J_Z(e_fp, fi(1:idx), x(1:idx))];
end

plot(u_g, prady)
hold on
