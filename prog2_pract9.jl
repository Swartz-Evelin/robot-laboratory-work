function c(x)
    xr=x^2
    b=1
    s=typeof(x)(0)

    k=1
   
    while fabs(b)>(1/1000)
        s+=b
        b=-b*xr/(2k)/(2k-1)
        k+=1
    end
    return s
end