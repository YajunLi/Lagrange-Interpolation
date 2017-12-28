% lagrange interpolation using divdifference
%  use divdif(x,f)

function q=newtinter(z,x,f)
% here,output should have the same form as z
% z is a row vector as input of evaluating points, it could be a single point or a large vector input
  m=divdif(x,f);
  n=length(z);
  q=zeros(1,n);
  
  for j=1:n; 
% create a vector p by x difference, like this 1  (x-x1)  (x-x1)(x-x2) ...
     p=zeros(1,length(m));
     p(1)=1;
     for i=2:length(m);
       p(i)= p(i-1)*(z(j)-x(i-1));
     endfor
   q(j)= p*diag(m);
   
  endfor
  
end
   
   
    