disp('Program to find the inverse of a square matrix' );
A=input('Enter a square matrix : ');
%A=[3 2 -1;2 -2 4;1 0 5];

[m,n]=size(A);
I=eye(n);
U=[A I];

for i=1:n-1
    for j=i+1:n
        k=U(j,i)/U(i,i);
        U(j,:)=U(j,:)-k*U(i,:);
    end
end
for i=1:n-1
    for j=i+1:n
        k=U(i,j)/U(j,j);
        U(i,:)=U(i,:)-k*U(j,:);
    end
end
for i=1:n
    k=U(i,i);
    U(i,:)=U(i,:)/k;
end

[M,N]=size(U);
invA=U(:,N-n+1);
for i=N-n+2:N
    invA=[invA U(:,i)];
end

disp('Inverse of the given matrix : ' );
disp(invA)

disp('Verification A*A^-1 : ' );
disp(A*invA);