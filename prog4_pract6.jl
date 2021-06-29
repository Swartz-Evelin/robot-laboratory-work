function next_split!(s::AbstractVector{Integer}, k)
    if k==1
        return nothing
    end
    i=k-1
    while i > 1 && s[i-1]==s[i]
        i -= 1
    end
    s[i] += 1
    r=sum(@view s[i+1:k])
    k=i+r-1 
    return s, k
end
# 
n=5; s=ones(Int, n); k=n
while !isnothing(s)
    println(s[1:k])
    global s
    s, k = next_split!(s, k)
    println(s)
end
struct Permute{N} <: AbstractCombinObject
    value:Vector{Int}
end
Permute{N}() where N = Permute{N}(collect(1:N))
function next!(w::Permute{N}) where N
    p=get(w)
    k=0
    for i in N-1:-1:1
        if p[i] < p[i+1]
            k=i
            break
        end
    end
    if k==0 
        return false
    end
    i=k+1
    while i < N && p[i+1] > p[k]
        i+=1
    end
    p[k], p[i] = p[i], p[k]
    reverse!(@view p[k+1:end])
    return true
end
# 
n=4
for p in Permute{n}()
    println(p)
end
