Massiv=[0,1,2,3,4,5]
function copy(v::Vector{Int64})
    n=length(v)
    Change=Vector{Int64}(undef,n)
    for i in 1:n
        Change[i]=v[i]
    end
    return Change
end
vec=[1 2
   3 4]
   
function copy( vec::Matrix)
    Change=Matrix{Int}(undef,size(vec))
    n=size(vec);
    for i in 1:n[1]
        for j in 1:n[1]
            Change[i,j]=vec[i,j]
        end
    end
    return Change
end