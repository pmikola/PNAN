function [ret, val] = MY_ZERO(func, init_x_range, tolerance)
% uwaga, funkcja jako init_x_range musi miec takie wartosci x, dla ktorych
% wewn¹trz tego przedzia³u istnieje 0. Inaczej inf jest zwracany


left_ret = func(init_x_range(1));
right_ret = func(init_x_range(2));

if(abs(init_x_range(2) - init_x_range(1)) < 1e-30)
    ret = init_x_range(1);
    val = left_ret;
    return;
end

if abs(left_ret) < tolerance
    ret = init_x_range(1);
    val = left_ret;
elseif abs(right_ret) < tolerance
    ret = init_x_range(2);
    val = right_ret;
else
   if left_ret < 0 && right_ret > 0
       [ret_a, val_a] = MY_ZERO(func, [init_x_range(1), (init_x_range(2) + init_x_range(1))/2], tolerance);
       [ret_b, val_b] = MY_ZERO(func, [(init_x_range(2) + init_x_range(1))/2, init_x_range(2)], tolerance);
       if val_a < val_b
           ret = ret_a;
           val = val_a;
       else
           ret = ret_b;
           val = val_b;
       end
   else
       ret = inf;
       val = inf;
   end
end