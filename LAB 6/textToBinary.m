function dn = textToBinary(txt)
dec=double(txt) 
p2=2.^(0:-1:-7) 
B=mod(floor(p2'*dec),2) 

X=size(B,2)
Y=zeros(1,X)
Z=ones(1,X)
B=[Y,B,Z]

dn=reshape(B,1,numel(B));
end
