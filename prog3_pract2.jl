function sum(s)
    r=0
    for x in s
        r=r+x
    end
    return r
end
function zeros(a)
    s=0
    for x in a
        if x==0
            s=s+1
        end
    end
    return s
end
function sorter(M)
    vecs=[@view M[:,j] for j in 1:size(M,2)]
    M=hcat(sortkey(sum,vecs))
    return M
end
function sorter(M)
    vecs=[@view M[:,j] for j in 1:size(M,2)]
    M=hcat(sortkey(zeros,vecs))
    return M
end