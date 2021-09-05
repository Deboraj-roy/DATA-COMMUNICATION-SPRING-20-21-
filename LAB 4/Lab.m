%19-40158-1 DEBORAJ ROY
fs = 8000; 
f = 400;
A1 = 19;
A2 = 15;
s = 0.11;
t = 0:1/fs:1-1/fs;
powfund = ((A1^2)+(A2^2))/2;
s = 0.1;
varnoise = s^2;
x = A1*sin(2*pi*(4*100)*t) + A2*cos(2*pi*(8*100)*t) + s*randn(size(t));
THD = thd(x);
defTHD = 10*log10(powharm/powfund);
TH = [THD defTHD]
SINAD = sinad(x); 
defSINAD = 10*log10(powfund/(powharm+varnoise));
SI = [SINAD defSINAD]
SNR = snr(x);
bandwidth = obw(x,fs)
C = bandwidth*log2(1+SNR) 

