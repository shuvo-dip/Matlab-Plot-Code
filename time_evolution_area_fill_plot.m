clear;close all;clc;
%%%%------------------------------------------------------------------------
%  Author :  Subhadip Biswas
%            Research Associate
%            Department of Physics and Astronomy
%            University of Sheffield
%            Email: subhadip.biswas@sheffield.ac.uk
set(0,'DefaultAxesFontName', 'times new roman')
set(0,'DefaultAxesFontSize', 25)
set(0,'DefaultTextFontname', 'times new roman')
set(0,'DefaultTextFontSize', 25)
set(0, 'DefaultAxesLineWidth', 2)
%%%%------------------------------------------------------------------------


clear;close all;clc;
x = -5:0.001:10;  % declare an arrey 
syms x0           % variable
y = @(x0) 0.8*exp(-0.5*(x-x0).^2); % function, say, Gaussian Distribution

for i = 1:10 % loop for distribution of different y values
    a0 = sin(pi*i./5);
    b0 = cos(pi*i./5)+5;
fill(x,y(a0)+0.5*i,'r','FaceAlpha',0.3,'EdgeColor','None') % Important command, fill the area and tone down the colour by transparent FaceAlpha value
hold on
fill(x,y(b0)+0.5*i,'b','FaceAlpha',0.3,'EdgeColor','None') % Important command, fill the area and tone down the colour by transparent FaceAlpha value

end
