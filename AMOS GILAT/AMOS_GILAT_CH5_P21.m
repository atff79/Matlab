% محدوده محورهای x و y
[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);

% تعریف تابع سطح
z = sin(sqrt(x.^2 + y.^2));

% رسم نمودار سه‌بعدی سطح
surf(x, y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Surface Plot of z = sin(\surd(x^2 + y^2))');
colorbar;      % نمایش نوار رنگی برای مقدار z
shading interp; % نرم‌تر کردن سطح برای نمایش بهتر
grid on;
