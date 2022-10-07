classdef FiParams
   
    properties
        fi_1;
        fi_2;
        fi_3;
        fi_4;
    end
    
    methods
        function obj = FiParams(masses, kappas, ks)
            obj.fi_1 = getFi(kappas.b1, masses.b1, ks.a, masses.a);
            obj.fi_2 = getFi(kappas.b1, masses.b1, ks.w, masses.w);
            obj.fi_3 = getFi(kappas.b2, masses.b2, ks.w, masses.w);
            obj.fi_4 = getFi(kappas.b2, masses.b2, ks.c, masses.c);
        end
    end
    
end

