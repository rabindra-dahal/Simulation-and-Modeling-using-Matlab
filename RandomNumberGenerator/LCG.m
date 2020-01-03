function LCG=LCG
fprintf('How many random number you want to generate');
s=input(' ==> ');
fprintf('\nPlease press : \n'); 
fprintf('1.Mixed LCG \n2.Additive LCG \n3.Multiplicative LCG \n Your Choice ');
choice=input(' ==> ');
switch choice
    case 1
        clc;
        fprintf('Mixed LCG selected ');
        fprintf('\nseed x[0] ');
        LCG(1)=input(' ==> ');
        fprintf('Multiplier a ');
        a=input(' ==> ');
        fprintf('Increment c ');
        c=input(' ==> ');
        fprintf('Modulus m ');
        m=input(' ==> ');
        for index=2:1:s+1
            LCG(index)=rem((a*LCG(index-1)+c),m);
        end
        
    case 2
        clc;
        fprintf('Additive LCG selected  i.e a=1 ');
        fprintf('\nseed x[0] ');
        LCG(1)=input(' ==> ');
        a=1;
        fprintf('Increment c ');
        c=input(' ==> ');
        fprintf('Modulus m ');
        m=input(' ==> ');
        for index=2:1:s+1
            LCG(index)=rem((a*LCG(index-1)+c),m);
        end
    case 3
         clc;
        fprintf('Multiplicative LCG selected i.e c=0 ');
        fprintf('\nseed x[0] ');
        LCG(1)=input(' ==> ');
        fprintf('Multiplier a ');
        a=input(' ==> ');
        c=0;
        fprintf('Modulus m ');
        m=input(' ==> ');
        for index=2:1:s+1
            LCG(index)=rem((a*LCG(index-1)+c),m);
        end
        
        
end
return;
        