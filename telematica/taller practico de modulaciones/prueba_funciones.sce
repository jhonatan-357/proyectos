clc
function AFP(g,f)
    
A=2.5
F=2.5
t=0:2*%pi/99:2*%pi;
cp=[];
mod=[]; bit=[];
for n=1:length(g);
    if g(n)==0;
            die=ones(1,100);
            se=zeros(1,100);
        else g(n)==1;
            die=2*ones(1,100);
            se=ones(1,100);
    end
    c=A*cos(2*%pi*f*t);
    cp=[cp die];
    mod=[mod c];
    bit=[bit se];
end
ask=cp.*mod;
subplot(3,1,1);plot(ask,'LineWidth',1.5);
title('Modulación ASK');

A2=5;
f0=1;
f12=2.5
t2=0:2*%pi/99:2*%pi;
cp2=[];
mod2=[]; bit2=[];

for n2=1:length(g) 
    if g(n2)==0
        die2=ones(1,100);
        c2=A2*cos(2*%pi*f0*t2);
        se=zeros(1,100);
    else g(n2)==1
    die2=ones(1,100);
    c2=A2*cos(2*%pi*f12*t2);
    se2=ones(1,100);
    end
    cp2=[cp2 die2];
    mod2=[mod2 c2];
    bit2=[bit2 se2];
end
fsk=cp2.*mod2;
subplot(3,1,2);plot(fsk, 'LineWidth',1.5);
title('Modulacion FSK');
A3=5;
f03=1;
f13=4
f=(f13+f03)/2
t3=0:2*%pi/99:2*%pi;
cp3=[];
mod3=[]; bit3=[];

for n3=1:length(g)
    if g(n3)==0
        die3=ones(1,100);
        c3=A3*cos((2*%pi*f*t3)+%pi);
        se3=zeros(1,100);
    else g(n3)==1
        die3=ones(1,100);
        c3=A3*cos(2*%pi*f*t3);
        se3=ones(1,100);
    end
    cp3=[cp3 die3];
    mod3=[mod3 c3];
    bit3=[bit3 se3];
end

psk=cp3.*mod3;
subplot(3,1,3);plot(psk, 'LineWidth', 1.5);
title('Modulacion PSK');
end
AFP(1,2);
