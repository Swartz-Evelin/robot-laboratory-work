function sinus(x::Union{Float16,Float32,Float64})
    xx=x^2
    a=x
    m=2
    s=typeof(x)(0) 
    while s+a != s
        s+=a
        a=-a*xx/m/(m+1)
        m+=2
    end

    return s
end
