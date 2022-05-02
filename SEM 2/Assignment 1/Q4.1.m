disp('Program to draw a quadratic curve connecting 3 points')
p=input('Enter 3 points as a matrix : ');

A=[p(1,1)^2 p(1,1) 1;p(2,1)^2 p(2,1) 1;p(3,1)^2 p(3,1) 1];
X=p(:,1);
Y=p(:,2);
B=p(:,2);

scatter(X,Y);
U=[A B];
[n,m]=size(U);

for i=1:n-1
    for j=i+1:n
        k=U(j,i)/U(i,i);
        U(j,:)=U(j,:)-k*U(i,:);
    end
end

b=U(:,m);
a=zeros([3,1]);

for i=n:-1:1
    T=0;
    for j=n:-1:i+1
        T=T+a(j)*U(i,j);
    end
    a(i,1)=(b(i,1)-T)/U(i,i);
end

X1=0:0.1:5;
Y1=a(1,1)*X1.^2 +a(2,1)*X1 + a(3,1);
hold on;
plot(X1,Y1);