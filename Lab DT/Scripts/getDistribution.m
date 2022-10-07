function [usedEnergies, distribution] = getDistribution(lengths, masses, energies, E_range, lastP, lastdiff, newNumPoints)

distribution = [];
usedEnergies = [];
accuracy = 2;
numPoints = 1000;
last_P = 0;
last_diff = 0;
if nargin == 7
    numPoints = newNumPoints;
    last_P = lastP;
    last_diff = lastdiff;
end

step = (E_range(2) - E_range(1)) / numPoints;
E = E_range(1) : step : E_range(2);
for E_x = E
    E_x
    P = getProbability(lengths, masses, energies, E_x);
    usedEnergies = [usedEnergies, E_x];
    distribution = [distribution, P];
    if P - last_P > accuracy * last_diff
       E_sub = [E_x+(E(2)-E(1))/10, E_x+(E(2)-E(1))];
       [usedE_sub, P_sub] = getDistribution(lengths, masses, energies, E_sub, P, P - last_P, 10);
       distribution = [distribution, P_sub];
       usedEnergies = [usedEnergies, usedE_sub];
    end
    lastdiff = P - last_P;
    last_P = P;
end

end

