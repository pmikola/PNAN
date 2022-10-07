classdef KappaParams
   
    properties
        b1;
        b2;
    end
    
    methods
        function obj = KappaParams(masses, energies, E_x)
            obj.b1 = getKappa(masses.b1, energies.b1, E_x);
            obj.b2 = getKappa(masses.b2, energies.b2, E_x);
        end
    end
    
end

