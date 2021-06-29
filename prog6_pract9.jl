function attempt_achievable!(start_ver::T, graph::ConnectList{T}, mark::AbstractVector{<:Integer}) where T   
    stack  = [start_ver]
    mark[start_ver] = 1 
    while !isempty(stack)
        v = pop!(stack)
        for u in graph[v]
            if mark[u] == 0
                push!(stack,u)
                mark[u] = 1
            end
        end
    end
end