% Determine the roots of a quadratic equation
clc, clear;

% Inputs for ax^b + bx + c = 0
a = input("Enter a: ");
b = input("Enter b: ");
c = input("Enter c: ");

% Calculate Delta
delta = b^2 - 4*a*c;
[x,x1,x2] = deal(0);

if delta
    x1 = -b + sqrt(delta) / 2*a;
    x2 = -b - sqrt(delta) / 2*a;

    if delta<0
        warning("D<=0, so the roots will be imaginary");
    end
    
    disp("X1: "); disp(x1);
    disp("X2: "); disp(x2);

else
    x = -b / 2*a;
    fprintf("X: %.2f\n",x);
    
end