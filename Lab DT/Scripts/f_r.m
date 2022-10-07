function ret = f_r(r_d, r_s, C_j)
R_ratio = r_d./r_s;
S = sqrt(-R_ratio - 1);
Denominator = abs(2*pi.*C_j.*r_d);
ret = 1./(Denominator).*S;
end

