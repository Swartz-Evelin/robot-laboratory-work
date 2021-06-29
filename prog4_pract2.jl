function nummax(A)
    num=0
    M=typemin(eltype(A))
    for a in A
        if a == M
            num += 1
        elseif a>M
            num=1
            M=a
        end
    end
    return num
end