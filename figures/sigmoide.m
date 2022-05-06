clear all;close all;clc

p = [1];

z = linspace(-5,5,1000);

for i=1:1:length(p)

    y(i,:) = 1 ./ (1 + exp(-p(i).*z));

    d(i,:) = p(i).*y(i,:).*(1 - y(i,:));

end

figure()
plot(z, y(1,:))
% hold on
% plot(z, y(2,:))
% plot(z, y(3,:))
% plot(z, y(4,:))
% hold off
grid on
xlabel('z', 'FontSize', 16)
ylabel('y', 'FontSize', 16)
ax = gca;
ax.FontSize = 10; 

%lgd = legend('p = 0.8','p = 1.0','p = 1.5','p = 3');
%lgd.FontSize = 10;



figure()
plot(z, d(1,:))
% hold on
% plot(z, d(2,:))
% plot(z, d(3,:))
% plot(z, d(4,:))
% hold off
grid on
xlabel('z', 'FontSize', 16)
ylabel('d', 'FontSize', 16)
ax = gca;
ax.FontSize = 10; 

%lgd = legend('p = 0.8','p = 1.0','p = 1.5','p = 3');
%lgd.FontSize = 10;