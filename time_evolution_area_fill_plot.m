%%%%------------------------------------------------------------------------
%  Author :  Subhadip Biswas
%            subhadip.biswas1993@gmail.com, subhadip.biswas@sheffield.ac.uk
%            Research Associate
%            Department of Physics and Astronomy
%            University of Sheffield


clear;close all;clc;
x = -5:0.001:10;  % Declear an arrey 
syms x0           % Variable
y = @(x0) 0.8*exp(-0.5*(x-x0).^2); % function, say, Gaussian Distribution

for i = 1:10 % loop for distribtion of different y values
    a0 = sin(pi*i./5);
    b0 = cos(pi*i./5)+5;
fill(x,y(a0)+0.5*i,'r','FaceAlpha',0.3,'EdgeColor','None') % Importent command, fill the area and tone down the colour by transperent FaceAlpha value
hold on
fill(x,y(b0)+0.5*i,'b','FaceAlpha',0.3,'EdgeColor','None') % Importent command, fill the area and tone down the colour by transperent FaceAlpha value

end
