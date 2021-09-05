% 19-40158-1 DEBORAJ ROY

clc
Transmitted_Message= 'DEBORAJ'
x=asc2bn(Transmitted_Message); % Binary Information

bp=.000001; % bit period
disp(' Binary information at Trans mitter :');
disp(x); % input signal x= [001010001111101000010000010000011111000001] input signal%
x1=[011011110000000011000];
x2=[000011000100100111001];
bit=[];
for n=1:1:length(x)
if x(n)==1;
se=5*ones(1,100);
else x(n)=0;
se=zeros(1,100);
end
bit=[bit se];
end
t1=bp/100:bp/100:100*length(x)*(bp/100);

subplot(5,1,1);
plot(t1,bit,'lineWidth',2.5);grid on;
axis([ 0 bp*length(x) -.5 6]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('Transmitting information as digital signal');
A1=11; % Amplitude of carrier signal for information 1
f=1940; % carrier frequency
bp=1/f;
t2=bp/99:bp/99:bp;
t=0:bp/100:35*bp;
y=A1*cos(2*pi*f*t);
subplot(5,1,2);
plot(t,y);
grid on;
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('Carrier Signal');
nx=size(x1,2);
i=1;
while i<nx+1
t2 = i:0.001:i+1;
if (x1(i)==1)
y=A1*cos(2*pi*f*t2);
else
y=A1*cos(2*pi*f*t2+pi);
end
if (x2(i)==1)
y1=A1*cos(2*pi*f*t2+pi/2);
else
y1=A1*cos(2*pi*f*t2+pi+pi/2);
end
QPSK =y+y1;
subplot(5,1,3);
plot(t2,y);
grid on;
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('PSK1 Modulated Signal');
subplot(5,1,4);
plot(t2,y1);
grid on;
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('PSK2 Modulated Signal');
subplot(5,1,5);
plot(t2,QPSK);
grid on;
%axis([ 0 bp*length(x2) -0.9 0.9]);grid on;
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('QPSK Modulated Signal');
i=i+1;
end
