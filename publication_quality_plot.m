clear;close all;clc;
%%%%------------------------------------------------------------------------
%  Author :  Subhadip Biswas
%            subhadip.biswas1993@gmail.com, subhadip.biswas@sheffield.ac.uk
%            Research Associate
%            Department of Physics and Astronomy
%            University of Sheffield
set(0,'DefaultAxesFontName', 'times new roman')
set(0,'DefaultAxesFontSize', 25)
set(0,'DefaultTextFontname', 'times new roman')
set(0,'DefaultTextFontSize', 25)
set(0, 'DefaultAxesLineWidth', 2)
%%%%------------------------------------------------------------------------

x = linspace(0,10,1000);
y = sin(pi*x);

plot(x,y,'LineWidth',3)
hold on
plot(x,x.*y,'LineWidth',3)

xlabel('$x$','interpreter','latex')  
ylabel('$f(x)$','interpreter','latex')

legend({'$f(x)$','$x*f(x)$'},'interpreter','latex')
xlim([0 10])
ylim([-2 2])
set(gca,'layer','top')
set(gca,'TickLength',[0.02, 0.01])
pbaspect([12 10 1])
% set(gca,'TickLength',[0.02, 0.01])
% set(gca,'XMinorTick','on','YMinorTick','on')
saveas(gcf,sprintf('fig_%s.jpg',datestr(now,'mm-dd-yyyy-HH-MM-SS')))
saveas(gcf,sprintf('fig_%s.fig',datestr(now,'mm-dd-yyyy-HH-MM-SS')))
