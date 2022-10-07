classdef KParams
   
    properties
        a;
        w;
        c;
    end
    
    methods
        function obj = KParams(masses, energies, E_x)
            obj.a = getk(masses.a, energies.a, E_x);
            obj.w = getk(masses.w, energies.w, E_x);
            obj.c = getk(masses.c, energies.c, E_x);
        end
    end
    
end

