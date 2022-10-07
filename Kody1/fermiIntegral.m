function ret=fermiIntegral(order,x)

%FERMI complete Fermi integrals
%
%y=FERMI(order,x)
%
%these function computes the values of the complete Fermi-Dirac integrals
%of the order -3/2, -1/2, 1/2 and 3/2
%at the values defined in the vector/matrix x
%
%Reference:
%Aymerich,Humet, solid state electron. 24, 981 (1981)
%S. Hackenbuchner, Diploma thesis, WSI (1999)

%Copyright 1999 Martin Rother
%
%This file is part of AQUILA.
%
%AQUILA is free software; you can redistribute it and/or modify
%it under the terms of the BSD License as published by
%the Open Source Initiative according to the License Policy
%on MATLAB(R)CENTRAL.
%
%AQUILA is distributed in the hope that it will be useful,
%but WITHOUT ANY WARRANTY; without even the implied warranty of
%MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%BSD License for more details.


%which order do we need?
%use one of several interpolation schemes or approximations dependent on the order and x
switch order*2
   case 1
      t=(1.5* 2.^1.5 *gamma(2.5))./((x+2.13+(abs(x-2.13).^2.4+9.6).^(1/2.4)).^1.5);
      ret=1./(exp(-x)+t);
   otherwise    
      disp('fermi: this order is not implemented!');
   end
   

