function eval(x,A,k)
    w=zeros(Int64,k-1)
    W=0
    for a in A
        i=k-1
        while i>1
            w[i]=w[i]*x+w[i-1]
            i=i-1
        end
        w[1]=w[1]*x+W
        W=W*x+a
    end
    n=1
    for i in 1:k-1
        w[i]=w[i]*n
        n=n*(n+1)
    end
    return W,w
end