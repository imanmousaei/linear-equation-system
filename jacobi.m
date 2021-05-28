function x = jacobi(a,b,precision)
    n = size(b,1);
    
    for i=1:n
        sigma = 0;
        for j=1:n
            if j==i
                continue
            end
            sigma = sigma + a(i,j) * x(j);
        end
        
        x(i) = (b(i)-sigma) / a(i,i);
    end
end