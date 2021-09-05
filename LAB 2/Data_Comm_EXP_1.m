% 19-40158-1 DEBORAJ ROY

fs = 1000; 
t = 0:1/fs:1-1/fs; 
f1 = 12; 
f2 = 6; 
A1 = 1.5;
A2 = 1.1;
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t); 
plot(t,x1,'k--o','LineWidth',1.5)
hold on
plot(t,x2,'b-*','LineWidth',2)
hold off
xlabel('time in seconds')
ylabel('Amplitude in volts')
title('Signals of different Frequencies')



fx1 = fft(x1);
fx2 = fft(x2);
fx1 = fftshift(fx1)/(fs/2);
fx2 = fftshift(fx2)/(fs/2);
f = fs/2*linspace(-1,1,fs);

plot(f, abs(fx1), f, abs(fx2),'LineWidth',1.5);
title('magnitude FFT of sine');
axis([-100 100 0 2])
xlabel('Frequency (Hz)');
ylabel('magnitude');