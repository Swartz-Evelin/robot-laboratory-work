function sinus(x,ε)
    xx=x^2
    a=x
    m=2
    s=typeof(x)(0) 
    while abs(a)>ε
        s+=a
        a=-a*xx/m/(m+1)
        m+=2
    end
    #УТВ: |sin(x)-s|<= ε
    return s
end
