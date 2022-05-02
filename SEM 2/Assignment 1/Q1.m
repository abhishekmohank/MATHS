disp('Program to find the solution to a system of linear equations');
A=input('Enter the coefficients as a matrix  : ');
B=input('Enter the values of the equations   : ');
%A=[3 2 -1;2 -2 4;-1 0.5 -1];
%B=[1 -2 0];

[m,n]=size(A);
U=[A B'];

for i=1:n-1
    for j=i+1:n
        k=U(j,i)/U(i,i);
        U(j,:)=U(j,:)-k*U(i,:);
    end
end

[M,N]=size(U);
b=U(:,N);
x=zeros([M,1]);

for i=M:-1:1
    T=0;
    for j=M:-1:i+1
        T=T+x(j)*U(i,j);
    end
    x(i,1)=(b(i,1)-T)/U(i,i);
end

disp('The solution of the linear equation : ');
disp(x);
