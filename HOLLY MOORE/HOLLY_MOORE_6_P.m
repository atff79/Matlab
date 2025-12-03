x = -2*pi:0.01:2*pi;

y = zeros(size(x));

y = y + -1 .* (x<=-pi);
y = y + cos(x) .* (x>=-pi & x<=pi);
y = y + -1 .* (x>=pi);

plot(x,y, LineWidth=1.5); 
grid on

