%% Czyszczenie:
clear all
clc

%% Obliczenie poziomu Efp:

e_fp = E_Fp();
u_g = 2.85:0.01:5.4;
jj = [];
for u = u_g
    e_g = u * C.q;
    e_c = 0;
    fi_ms = FI_MS(0, -e_g, e_fp); 
    u_fb = U_FB(fi_ms);
    fi_s = FI_S(u, u_fb);
    d = D(fi_s);

    x = 0:1/1000*d:d;
    fi = FI(d, x);

    xz = 1/10*d;
    idx = find(x>xz, 1, 'first'); 
    
    jj = [jj, J_Z(e_fp, fi(1:idx), x(1:idx))];
end

plot(u_g, jj)

