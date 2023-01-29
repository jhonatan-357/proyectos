function FSK(g , f)
A=5;
f0=1;
f1=2.5
t=0:2*%pi/99:2*%pi;
cp=[];
mod=[]; bit=[];
g=[1 0 1 0 1];
for n=1:length(g);
    if g(n)==0
    die=ones(1,100);
    c=A*cos(2*%pi*f0*t);
    
    se=zeros(1,100);
else 
    g(n)==1
    die=ones(1,100);
    c=A*cos(2*%pi*f1*t);

    se=ones(1,100);
end
cp=[cp die];
mod=[mod c];
bit=[bit se];
end
fsk=cp.*mod;
subplot(2,1,1);plot(bit,'LineWidth',1.5);
title('Señal binaria');
subplot(2,1,2);plot(fsk,'LineWidth',1.5);
title('Modulacion FSK');
end