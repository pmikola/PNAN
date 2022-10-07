function plotIUGraph(IUArray)
%IUArray - matrix with two columns and n rows, where 1st column is x axis
%          and 2nd is y axis
IUArray = sortrows(IUArray);
U = IUArray(:,1);
I = IUArray(:,2);

U_str = "V";
U_max = max(U);
if U_max < 1e-3
    U_str = "\muV";
    U = U.*1e6;
elseif U_max < 1
    U_str = "mV";
    U = U.*1e3;
end

I_str = "A";
I_max = max(I);
if I_max < 1e-3
    I_str = "\muA";
    I = I.*1e6;
elseif I_max < 1
    I_str = "mA";
    I = I.*1e3;
end


plot(U, I);
title("Charakterystyka pr¹dowo napiêciowa diody Esakiego");
xlabel(strcat("U[", U_str, "]"));
ylabel(strcat("I[", I_str, "]"));
end

