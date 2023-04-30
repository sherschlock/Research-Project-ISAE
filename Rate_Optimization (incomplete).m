clear all
clc
close all

Vg = 0.1;
Vf = 1;
x = linspace(0,10);
y = linspace(0,10);
z = linspace(0,10);
T = linspace(0,60);

%for T = linspace(0,60)
    Sf = abs(Vf*(T*Vg^2 - Vg*(x.^2 + y.^2).^0.5 + ((x*Vf).^2 + (y*Vf).^2 + (z*Vf).^2 + (T*Vf*Vg).^2 - 2*(T')*Vg*(Vf^2)*(x.^2 + y.^2).^0.5 - (z*Vg).^2).^0.5)/(Vg^2 - Vf^2));
%end


r = 1./((T./Sf) - 1/Vf);
s = (x.^2 + y.^2 + z.^2).^0.5

surf(s,T,r)