fs = 10000;
t = [0:1/fs:0.1];
f = 10;
sig = 2*sin(2*pi*f*t); 
xmax = max (sig)
xmin = min (sig)
delta = ( xmax - xmin ) / 6 
partition=[linspace(xmin+delta,xmax-delta,5)]; 
codebook = [linspace(xmin, xmax, 6)];
[index,quants] = quantiz(sig,partition,codebook);
figure
plot(t,sig,'-',t,quants,'*')
legend('Original signal','Quantized signal');
