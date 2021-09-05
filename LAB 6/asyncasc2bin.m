function dn = asyncasc2bin(txt)
dec=double(txt);  
p2=2.^(0:-1:-7);  
B=mod(floor(p2'*dec),2); 
X=size(B,2);
Y=ones(1,X);
Z=zeros(1,X);
A=[Z;B;Y]
dn=reshape(A,1,numel(A));
end

