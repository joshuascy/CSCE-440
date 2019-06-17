%Newton's Divided Differences

% t is the list of temperatures
% b is the list of pressures
% t0 is the value to be computed
function N = newton(t,b,t0)
    n=length(t);
    % Initialize D as nxn zero matrix
    D=zeros(n,n);
    
    for i=1:n
        % Define the first column as b
        D(i,1)=b(i);
    end
    for j = 2:n
        for i = j:n
            % Newton's Divided Differences
            D(i,j) = (D(i,j-1)-D(i-1,j-1))/(t(i)-t(i-j+1));
        end
    end
    % Recursively returns value to be computed
    p=D(n,n);
    for i=1:n-1
        p=D(n-i,n-i)+(t0-t(n-i))*p;
    end
    N=p;
end