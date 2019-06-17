% Lagrange Polynomial Interpolation

% t is the list of temperatures
% b is the list of pressures
% t0 is the value to be computed
function P = lagrange(t,b,t0)

   % Initialize the sum as 0
   sum = 0;
   for i=1:length(t)
       % Initialize Lagrange term as 1
       L=1;
       for j=1:length(t)
           if j~=i
               % Compute Lagrange terms
               L = L * (t0-t(j))/(t(i)-t(j));
           end
       end
       sum = sum + L*b(i);
   end
   % Returns Lagrange Polynomial
   P=sum;
end
   