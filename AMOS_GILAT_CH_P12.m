x = linspace(-10,10,1000);
y = 693.8 - 68.8 * cosh(x/99.7);

plot(x,y, ...
    LineWidth = 2, ...
    Color = 'k');

title("St. Louis Gateway Arch");