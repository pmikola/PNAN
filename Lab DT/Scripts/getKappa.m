function kappa = getKappa(mass, energy, E_x)
h_red = 1.0546e-34;

kappa = sqrt(2.*mass./(h_red*h_red).*(energy - E_x));

end

