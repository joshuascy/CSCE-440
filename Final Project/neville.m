%Neville's Method

% t is the list of temperatures
% b is the list of pressures
% t0 is the value to be computed
function N = neville(t,b,t0)
    n=length(t);
    % Initialize Q as nxn zero matrix
    Q=zeros(n,n);
    
    for i=1:n
        % Define the first column as b
        Q(i,1)=b(i);
    end
    for j = 2:n
        for i = j:n
            % Compute Neville's method
            Q(i,j) = ((t0-t(i-j+1)) * Q(i,j-1)/(t(i)-t(i-j+1))) + ((t(i)-t0) * Q(i-1,j-1)/(t(i)-t(i-j+1)));
        end
    end
    % Returns interpolation
    N=Q;
end
