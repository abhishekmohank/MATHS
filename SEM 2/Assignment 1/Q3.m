disp('Program to perform LDU decomposition : ')
A=input('Enter a matrix : ');
%A=[3 2 -1;2 -2 4;1 0 5];
[m,n]=size(A);
U=A;
M1=eye(n);
L1=eye(n);

for i=1:n-1
    for j=i+1:n
        k=U(j,i)/U(i,i);
        M1(j,i)=k;
        U(j,:)=U(j,:)-k*U(i,:);
    end
    L1=L1*M1;
    M1=eye(3);
end

D=eye(3);
for i=1:n
    k=U(i,i);
    M1(i,i)=k;
    U(i,:)=U(i,:)/k;
    D=D*M1;
    M1=eye(3);
end
disp('L = ')
disp(L1)

disp('D = ')
disp(D)

disp('U = ')
disp(U)

disp('L*D*U = ')
disp(L1*D*U);