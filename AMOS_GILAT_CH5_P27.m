Vs = 1.5;
R = 1200;
I0 = 1e-14;
Vt = 0.03;

vD = linspace(0, 1.5, 10000);
iD_diode = I0 * (exp(vD / Vt) - 1);
iD_resistor = (Vs - vD) / R;

semilogy(vD, iD_diode, 'r', vD, iD_resistor, 'b')
xlabel('v_D (V)')
ylabel('i_D (A)')
legend('Diode','Resistor','Location','northwest')
grid on;