clear; clc;

%% Inputs
plan = input("Choose plan: ","s");
week = input("How many weeks: ");
day = input("How many days: ");
hour = input("How many hours: ");
minute = input("How many minuts: ");


%% Calculate Bill
[daily, weekly] = deal(0);

switch plan

    case "long"
        bill = min(60, day * 9) + week * 60 ...
             + min(9, (hour-1)+2);

    case "short"
        bill =  mod(minute - 30, 20);

    otherwise
        error("Plan not defined");

end

%% Results
fprintf("Total bill is: %.2f \n", bill);
