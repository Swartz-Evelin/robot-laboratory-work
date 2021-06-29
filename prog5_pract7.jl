function eratosphen(n::Integer)
    ser=fill(true,n)
    ser[1]=false
    k=2
    while k<n || k != nothing
        ser[2k:k:end] .= false 
        k=findnext(ser, k+1)
    end
    return findall(ser)
end