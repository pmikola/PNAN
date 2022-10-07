function P = getProbability(lengths, masses, energies, E_x)
    k_params = KParams(masses, energies, E_x);
    kappa_params = KappaParams(masses, energies, E_x);
    fi_params = FiParams(masses, kappa_params, k_params); 
    
    
    k_am_a = k_params.a./masses.a;
    K_b1m_b1 = kappa_params.b1./masses.b1;
    k_wm_w = k_params.w./masses.w;
    K_b2m_b2 = kappa_params.b2./masses.b2;
    k_cm_c = k_params.c./masses.c;
    
    numerator = 1e-200 * 256 * k_am_a * (K_b1m_b1 .^2) *(k_wm_w .^2) * (K_b2m_b2 .^2) * k_cm_c;
    denominator = 1e-200 * ((k_am_a .^2)+(K_b1m_b1 .^2))*((K_b1m_b1 .^2)+(k_wm_w .^2))*((k_wm_w .^2)+(K_b2m_b2 .^2))*((K_b2m_b2 .^2)+(k_cm_c .^2));
    P = numerator./denominator./(4*getM(lengths, kappa_params, k_params, fi_params));
end

