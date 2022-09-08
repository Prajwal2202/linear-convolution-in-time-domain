clc
close ALL
clear ALL

x=[1,2,3,4];
h=[4,5,4,5];

m=length(x);
n= length(h);
N= max(m,n);
if(m>=n)
    for( i=m+1:N)
       x(i)=0;
    end;
end;

if(n<=N)
     for(i=n+1:N)
         n(i)=0;
     end;
end;
y=zeros(1,N);
for(m=0:N-1)
     y(m+1)=0;
     for(n=0:N-1)
       j=mod(m-n,N);
       y(m+1)=y(m+1)+x(n+1).*h(j+1);
     end;
end;
%verification
y1=cconv(x,h,N);