function cos(x,t)
    xq=x^2
    a=1
    k=1
    s=typeof(x)(0)
    while fabs(a)>t
        s+=a
        a=-a*xq/(2k)/(2k-1)
        k+=1
    end
    return s
end