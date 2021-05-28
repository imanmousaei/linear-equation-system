function x = jacobi(a,b,precision)
    n = size(b,2);
    
    x = ones(1,n);
    precise = false;
    
    while ~precise
        precise = true;
        for i=1:n
            prev = x(i);

            sigma1 = 0;
            for j=1:n
                if j==i
                    continue
                end
                sigma1 = sigma1 + a(i,j) * x(j);
            end

            
            x(i) = (b(i) - sigma1) / a(i,i);
            
            if abs(x(i)-prev) > precision
                precise = false;
            end
        end
    end
end

