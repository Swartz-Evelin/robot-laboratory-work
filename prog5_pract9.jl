function strongly_connected(graph::ConnectList)
    for s in 1:length(graph)
        if all_achievable(s, graph) == false
            return false
        end
    end
    return true
end

function all_achievable(started_ver::Integer, graph::ConnectList)
    mark = zeros(Bool,length(graph))
    attempt_achievable!(started_ver, graph, mark)
    return count(m->m==0, mark) == 0 #all(mark .== 1)
end