%Cirlcular Convolution

clc;
close all;
clear;
xn = input("Input sequence x(n):");
L = length(xn);
hn = input("Input sequence h(n):");
p = length(hn);
N = max(L,p);
b = 1:N;
xn = [xn zeros(1,N-L)];
hn = [hn zeros(1,N-p)];
y1 = zeros(N,N);
for i = 0:N-1
    for j = 0:N-1
        k = mod((i-j),N);
        y1(i+1) = y1(i+1)+(xn(j+1))*(hn(k+1));
    end
end
stem(b,y1);
disp(y1);
xlabel("Time Values");
ylabel("Convolution Output");
title("Circular convolution of two sequences")


%Liner Convolution Using Circular 
clear 
close all;
x=input('Enter the sequence xn');
y=input('Enter the sequence hn');
L1=length(x);
L2=length(y);
N=L1+L2-1;
if N>L1

    x=[x zeros(1,N-L1)];
end

  if N>L2
     y=[y zeros(1,N-L2)];
  end

w=y';
for j=2:N
    for i=2:N
        w(1,j)=w(N,j-1);
        w(i,j)=w(i-1,j-1);
    end
end
W=w*x';
disp(W);



