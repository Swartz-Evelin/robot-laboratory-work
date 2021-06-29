struct NumSplit{N} <: AbstractCombinObject
    value::Vector{Int}
    num_terms::Int 
NumSplit{N}() where N = NumSplit{N}(collect(1:N), N)
function next!(split::NumSplit) 
    if split.num_terms == 1
        false
    end
    s=split.value
    k=split.num_terms
    i=k-1 
    while i > 1 && s[i-1]==s[i]
        i -= 1
    end
    s[i] += 1
    r=sum(@view s[i+1:k])
    k=i+r-1 
    s[i+1:k] .= 1
    split.num_terms = k
    return true
end
# 
n=5
for s in NumSplit{n}()
    println(s)
end