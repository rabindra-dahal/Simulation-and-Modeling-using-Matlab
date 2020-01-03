function KSTesting=KSTesting
fprintf('How many data for testing ');
si=input(' ==> ');
fprintf('Enter data for testing\n ');
for index=1:1:si
    fprintf(' number[%d] ',index);
    in=input(' ==> ');
    x(index)=in;
end
y=[sort(x)];%sort value of x and store in y
for ind=1:1:si
    fprintf('%.2f\t',y(ind));
end

clc;
fprintf('i \t\t R(i) \t i/N \t i/N-R(i) \t R(i)-(i-1)/N \t \n'); 
for z=1:1:si
    r=z/length(y);
    s=(z-1)/length(y);
    dp(z)=r-y(z);
    dm(z)=y(z)-s;
    fprintf('%0.2f \t %0.2f \t %0.2f \t %0.2f \t\t %0.2f \t \n',z,y(z),r,dp(z),dm(z));
end
cald(1)=max(dp);
cald(2)=max(dm);
cal=max(cald);
fprintf('Calculated value is %.2f \n',cal);
fprintf('Please enter the tabulated value ');
calt=input(' ==> ');
if cal<calt
    fprintf('Null hypothesis is accepted \n');
else
    fprintf('Alternative hypothesis is accepted \n');
end
