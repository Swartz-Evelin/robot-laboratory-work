function height(tree::Tree)
    h=0
    for sub in tree.sub
        h = max(h,height(sub))
    end
    return h+1
end
function vernumber(tree::Tree)
    N=1
    for sub in tree.sub
        N += vernumber(sub)
    end
    return N
end
