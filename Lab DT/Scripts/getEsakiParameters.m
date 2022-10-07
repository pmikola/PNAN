function [I_p, U_p, I_v, U_v, U_Fp] = getEsakiParameters(IUArray)

IUArray = sortrows(IUArray);
U = IUArray(:,1);
I = IUArray(:,2);
IDiff = diff(I);

idx = find(IDiff<=0, 1);
I_p = I(idx);
U_p = U(idx);
idx = find(IDiff(idx:end)>=0, 1) + idx - 1;
I_v = I(idx);
U_v = U(idx);
I(idx:end)
idx = find(I(idx:end) >= I_p, 1) + idx - 1;
U_Fp = U(idx);
end

