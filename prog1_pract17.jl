ConnectList{T} = AbstractVector{<:AbstractVector{T}}

function treetrace(rootindex::T, tree::ConnectList{T}) where T
    stack  = [rootindex]
    while !isempty(stack)
        v = pop!(stack)
        println(v) 
        for u in tree[v]
            push!(stack,u)
        end
    end
end
