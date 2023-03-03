clear;close all;clc;
x = linspace(0,10,1000);
y = sin(pi*x);

plot(x,y,'LineWidth',3)
hold on
plot(x,x.*y,'LineWidth',3)
% plot(mass_phi2,'LineWidth',3)
xlabel('$t$','interpreter','latex')  
ylabel('$\sum_i {\phi_3}_i$','interpreter','latex')

xlabel('$x$','interpreter','latex')  
ylabel('$f(x)$','interpreter','latex')
legend({'$f(x)$','$x*f(x)$'},'interpreter','latex')
xlim([0 10])
ylim([-2 2])
saveas(gcf,sprintf('fig_%s.jpg',datestr(now,'mm-dd-yyyy-HH-MM-SS')))
saveas(gcf,sprintf('fig_%s.fig',datestr(now,'mm-dd-yyyy-HH-MM-SS')))