function dfs(start_ver::T, graph::ConnectList{T}) where T

    function dfs!(v) 
        println(v) 
       
        mark[v]=true 
        for u in graph[v]
            if !mark[u] 
                dfs!(u)
            end
        end
    end

    n=length(graph)
    mark=zeros(Bool, n)

    dfs!(start_ver)
end
