classdef Energies
   
    properties
        a;
        b1;
        w;
        b2;
        c;
    end
    
    methods
        function obj = Energies(V_a, V_b1, V_w, V_b2, V_c)
            obj.a = V_a;
            obj.b1 = V_b1;
            obj.w = V_w;
            obj.b2 = V_b2;
            obj.c = V_c;
        end
    end
    
end

