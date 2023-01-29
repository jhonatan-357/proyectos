function ASK(g , f)
A=2.5;
t=0:2*%pi/99:2*%pi;
cp=[];
mod=[]; bit=[];
for n=1:length(g);
    if g(n)==0;
    die=ones(1,100);
    se=zeros(1,100);
else 
    g(n)==1;
    die=2*ones(1,100);
    se=ones(1,100);
end
c=A*cos(2*%pi*f*t);
cp=[cp die];
mod=[mod c];
bit=[bit se];
end
ask=cp.*mod;
subplot(2,1,1);plot(bit,'LineWidth',1.5);
title('Señal Binaria');
subplot(2,1,2);plot(ask,'LineWidth',1.5);
title('Modulación ASK');
end
