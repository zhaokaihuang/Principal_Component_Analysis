clear
clear all
load iris
[PC,V] = pca1(X);
PC12=PC(:,[1,2]);
PC13=PC(:,[1,3]);
PC23=PC(:,[2,3]);
mn = mean(X,2);
[M,N] = size(X);
X = X - repmat(mn,1,N);
Z12 = transpose(PC12)*X;
Z13 = transpose(PC13)*X;
Z23 = transpose(PC23)*X;
figure(1);      
for i=1:N
    if(y(i)==1)
        plot(Z12(1,i),Z12(2,i),'*b');
    end
    if(y(i)==2)
        plot(Z12(1,i),Z12(2,i),'+r');
    end
    if(y(i)==3)
        plot(Z12(1,i),Z12(2,i),'og');
    end
    hold on
end     
figure(2);
for i=1:N
    if(y(i)==1)
        plot(Z13(1,i),Z13(2,i),'*b');
    end
    if(y(i)==2)
        plot(Z13(1,i),Z13(2,i),'+r');
    end
    if(y(i)==3)
        plot(Z13(1,i),Z13(2,i),'og');
    end
    hold on
end
figure(3);
for i=1:N
    if(y(i)==1)
        plot(Z23(1,i),Z23(2,i),'*b');
    end
    if(y(i)==2)
        plot(Z23(1,i),Z23(2,i),'+r');
    end
    if(y(i)==3)
        plot(Z23(1,i),Z23(2,i),'og');
    end
    hold on
end