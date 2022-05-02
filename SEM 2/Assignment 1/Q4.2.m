disp('Extended solution')
p=input('Enter n points as a matrix : ');
[m,n]=size(p);

A=[p(1,1)^2 p(1,1) 1];
for i=2:m
    A=[A;p(i,1)^2 p(i,1) 1];
end

X=p(:,1);
Y=p(:,2);
B=p(:,2);
scatter(X,Y);

x=pinv(A)*B;
a=zeros([3,1]);
for i=1:3
    a(i,1)=x(i,1);
end

X1=0:0.1:5;
Y1=a(1,1)*X1.^2 +a(2,1)*X1 + a(3,1);
hold on;
plot(X1,Y1);
