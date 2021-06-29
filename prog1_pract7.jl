function alog(a,n::Integer) 
	r = 1
	while (n>0)
		if mod(n,2)==0 
			a=a*a
			n=div(n,2)
		else 
			r=r*a
			n=n-1
        end
    end
return r;
end