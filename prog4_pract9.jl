function toptrace(tree::Vector)
    println(tree[end]) 
    for subtree in tree[1:end-1] 
        toptrace(subtree)
    end
end
function downtrace(tree::Vector)  
    for subtree in tree[1:end-1] 
        downtrace(subtree)
    end
    println(tree[end])
end