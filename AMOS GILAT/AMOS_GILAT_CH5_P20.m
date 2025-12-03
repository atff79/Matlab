pg = 2:0.01:60;

q = 4;
av = q ./ sqrt(pg);

plot(pg,av,  LineWidth=1.5, DisplayName="PG = 4"); hold on;

q = 5;
av = q ./ sqrt(pg);

plot(pg,av, LineWidth=1.5, DisplayName="PG = 5")

grid on;
xlabel("PG"); ylabel("A_v");

legend show;