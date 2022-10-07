classdef Masses
   
    properties
        a;
        b1;
        w;
        b2;
        c;
    end
    
    methods
        function obj = Masses(m_a, m_b1, m_w, m_b2, m_c)
            obj.a = m_a;
            obj.b1 = m_b1;
            obj.w = m_w;
            obj.b2 = m_b2;
            obj.c = m_c;
        end
    end
    
end

