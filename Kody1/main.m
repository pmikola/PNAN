%% Obliczenie poziomu Efp:
e_fp = E_Fp();

%% Obliczenie napiêcia p³askich pasm:
e_c = 0; % nasz punkt odniesienia, patrz na rysunku Ec jest rowne 0
fi_ms = FI_MS(e_c, -C.E_G, e_fp); % E_V jest przesuniête w dó³ o przerwê zabronion¹, czyli jest równe Ec-Eg = 0 - Eg = -Eg
u_fb = U_FB(fi_ms);
    
%% Obliczenie pr¹du dla ró¿nych wartoœci napiêcia na bramce    
u_g = u_fb:0.001: 5*u_fb; % spe³niamy warunek ze u_g wieksze niz napiecie plaskich pasm
prady = [];
for u = u_g
    fi_s = FI_S(u, u_fb); % liczymy potencja³ przypowierzchniowy
    d = D(fi_s); % d ³atwo policzyæ

    x = 0:1/1000*d:d; % zakres od granicy ox - si do d
    fi = FI(d, x); % dla tego zakresu liczymy rozklad potencjalu
    EC = E_C(fi)/C.q;
    EV = (E_C(fi) - C.E_G)/C.q;
    %plot(x, fi); %- ODKOMENTUJ TÊ ORAZ
    %hold on %- TÊ LINIJKÊ
    %pause %- I TÊ, TO KLIKAJ¥C ENTER NA KONSOLI ZOBACZYSZ JAK SIÊ ZMIENIA
    %ROZK£AD WRAZ ZE ZWIÊKSZANIEM SIÊ U_G
   
    
    % tu jest szukanie xz:
    % xz jest zdefiniowane jako taka wartosc przemieszczenia od granicy
    % ox-si, ¿e wartoœæ krawêdzi pasma przewodnictwa jest rowna wartoœci
    % krawêdzi pasma walencyjnego w du¿ym oddaleniu (nasze EV, ktore jest
    % równe -Eg de facto). Find z parametrem (1, 'first') dziala tak ze znajduje JEDN¥ i PIERWSZ¥ wartoœæ
    % w³aœnie Ec ( wzor na Ec(x)=-qfi jest zaraz w punkcie pierwszym
    % polecenia), która jest wiêksza od Ev daleko od granicy ox-si czyli -Eg
    idx = find(-fi * C.q >= -C.E_G, 1, 'first');
  
    % powiêkszamy nasze wyniki pr¹dów o kolejn¹ wartoœæ, dla tego u bramki
    % J_Z znaj¹c e_fp korzysta z g_btbt i calkuje sobie fi po x (st¹d
    % trzeba podac zakres x dla danego zakresu fi.
    prady = [prady, J_Z(e_fp, fi(1:idx), x(1:idx))];
end

plot(u_g, prady)
hold on
