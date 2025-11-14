Rl = 1:0.1:10;
vs = 12;
rs = 2.5;
p = (vs^2 .* Rl) ./ (Rl + rs).^2;

plot(Rl,p,'LineWidth',2);
grid on;
title("Power over Resistance");
xlabel("R");
ylabel("V");
