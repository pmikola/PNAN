function k = getk(mass, energy, E_x)
h_red = 1.0546e-34;

k = sqrt(2.*mass./(h_red*h_red).*(E_x - energy));

end

