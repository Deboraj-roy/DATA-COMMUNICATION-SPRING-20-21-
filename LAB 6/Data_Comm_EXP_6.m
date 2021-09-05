% 19-40158-1 DEBORAJ ROY
clc
txt = '19-40158-1'; 
prompt = '"S" for Synchronus and "A" for Asynchronus!';
x = input(prompt, 's') 
if x == 'S'
    x = asc2bn(txt);  
    bp = 1;
  
 disp('Binary information at Transmitter :');
 disp(x);  bit=[];
 for n=1:1:length(x)  
     if x(n)==1;  
         se=5*ones(1,100); 
     else x(n)==0;  
         se=zeros(1,100);  
     end
     bit=[bit se];
 end
 t1=bp/100:bp/100:100*length(x)*(bp/100); 
  
 plot(t1,bit,'lineWidth',2.5);
 grid on;  
 axis([ 0 bp*length(x) -.5 6]);
 ylabel('amplitude(volt)'); 
 xlabel(' time(sec)'); 
 title('Transmitting information as Synchronus digital signal'); 
    elseif x=='A' 
       x=asyncasc2bin(txt);  
       bp=1; 
  
 disp(' Binary information at Trans mitter :');  
 disp(x);  bit=[];  
 for n=1:1:length(x)   
     if x(n)==1;   
         se=5*ones(1,100);   
     else x(n)==0;   
         se=zeros(1,100);  
     end 
  bit=[bit se];  
 end 
 t1=bp/100:bp/100:100*length(x)*(bp/100); 
  
 plot(t1,bit,'lineWidth',2.5);
 grid on;  
 axis([ 0 bp*length(x) -.5 6]);  
 ylabel('amplitude(volt)');  
 xlabel(' time(sec)');  
 title('Transmitting information as Asynchronus digital signal'); 
    else  
 disp('Warning: Invalid Input! Please type "A" or "S"!!'); 
end 



