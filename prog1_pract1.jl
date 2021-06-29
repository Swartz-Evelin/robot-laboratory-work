T=Vector{Int64}(undef,6)
T=[0,1,2,3,4,5]
function merge( T::Vector{Int64}, U::Vector{Int64})
    n=length(T)+length(U)
    V=Vector{Int64}(undef,n)
    i=1
    a=1
    b=1
    while i<n+1
        if ((T[a]<U[b]) && (a<length(T))) 
            V[i]=T[a]
            i=i+1
            a=a+1
        elseif (b<length(U))
            V[i]=U[b]
            b=b+1
            i=i+1
        end
    end
    return V
end
function reverse_user!(T)
    sort!(T)
    n=length(T)
    V=Vector{Int64}(undef,n)

    for i in 1:n
        V[i]=T[n-i+1]
    end
    return V
end

U=[1 2
   3 4]

function reverse_user_upgrade!(U::Matrix)
    V=Matrix{Int}(undef,size(U))
    V[1,:]=reverse_user!(U[1,:])
    U[1,:]=reverse_user!(U[1,:])
    V[2,:]=reverse_user!(U[2,:])
    U[2,:]=reverse_user!(U[2,:])
    V[:,1]=reverse_user!(U[:,1])
    V[:,2]=reverse_user!(U[:,2])
    
    return V
end