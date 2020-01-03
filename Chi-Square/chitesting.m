function chitestprocedure=chitesting
clc;

fprintf('Please enter the size of data ');
in=input('==> ');
fprintf('Please enter %d observed data\n',in);
for index= 1:1:in
    fprintf('Number[%d] ',index);
    datao=input('==> ');
    od(index)=datao;
end  
fprintf('Please enter the expected data ');
ed=input('==> ');
for index1 = 1:1:10
    E(index1)=ed;
end
for k=1:1:10
    cnt=0;
    for l=1:1:in
        if (k-1)==od(l)
            cnt=cnt+1;
        end
    end
    O(k)=cnt;
end

chisum=0;


for z=1:1:10
    
    chiz=((O(z)-E(z))*(O(z)-E(z)))/E(z);
    
    chi(z)=chiz;
    
end
for y=1:1:10
    
     chisum=chisum+chi(y);
end
for q=1:1:10
    
    fprintf('%d\t %d\t %d\t %0.2f\t \n',q-1,O(q),E(q),chi(q));
    
end

fprintf('\n Chi calc is ==> %0.2f ',chisum);

fprintf('\nPlease enter the tabulated value of chi ');
chitab=input('==> ');
if chitab>chisum
    fprintf('Null Hypothesis Accepted \n');
else
    fprintf('Alternative Hypothesis Accepted \n');
end
 

 return;

    

