tmin=0
tmax=100
f=300
f1=100;
f2=500;
t=linspace(tmin,tmax,100);
A=5;
A1=2.5;
A2=3;

s=A*sin(2*%pi*f*t);
plot (t,s,'g');
title ('Asin(2pift)');
s1=A1*sin(2*%pi*f1*t);
plot (t,s1,'r');
s2=A2*sin(2*%pi*f2*t);
plot (t,s2,'b');
sf=s+s1+s2;
plot (t,sf,'k');
