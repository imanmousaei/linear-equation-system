function x = sor(a,b,omega,precision)
    n = size(b,1);
    
    x = zeros(1,n);
    precise = false;
    
    while ~precise
        precise = true;
        for i=1:n
            prev = x(i);

            sigma1 = 0;
            for j=1:i-1
                sigma1 = sigma1 + a(i,j) * x(j);
            end

            sigma2 = 0;
            for j=i+1
                sigma2 = sigma2 + a(i,j) * x(j);
            end

            x(i) = (b(i) - sigma1 - sigma2) * omega / a(i,i)  +  (1-omega)*x(i);
            
            if abs(x(i)-prev) > precision
                precise = false;
            end
        end
    end
end