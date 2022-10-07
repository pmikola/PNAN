classdef C
    %C Klasa przechowuj¹ca sta³e
    % Wszystkie sta³e s¹ sw jednostkach uk³adu SI
    
    properties (Constant)
        % definicja jednostek nie SI:
        eV = 1.6021766208989898989898e-19;
        cm = 1e-2;

        t_ox = 3e-9; % gruboœæ tlenku
        T = 300; % temperatura
        Q_eff = 0;

        fi_M = 4.1 * C.eV; % praca wyjœcia z AI
        chi_i = 0.9 * C.eV; % powinowactwo elektronowe SiO2
        chi_s = 4.05 * C.eV; % powinowactwo elektronowe Si
        dE_a = 0.045 * C.eV; % energia aktywacji akceptorów (boru w krzemie)
        
        fi_f_q = C.k_B*C.T*log(C.N_A/C.n_i);
        eps_s = 11.7*8.85e-14 * 1/C.cm;
        eps_ox = 3.9*8.85e-14 * 1/C.cm;
        c_ox = C.eps_ox/C.t_ox;
        q = 1.6e-19;
        h = 6.62e-34;
        h_red = C.h / (2 * pi);
        k_B = 1.38e-23;
        m_0 = 9.1e-31;
        m_r = 0.5 * C.m_0;
        
        N_A = 2e19 * C.cm^-3;
        N_C = 3.22e19*(C.T/300)^(3/2) * C.cm^-3;
        N_V = 1.82e19*(C.T/300)^(3/2) * C.cm^-3;
        E_G = (1.1785 - 9.025e-5*C.T - 3.05e-7*C.T^2) * C.eV;
        n_i = sqrt(C.N_C*C.N_V)*exp(-C.E_G/(2*C.k_B*C.T));
        
    end
end

