function convert_to_list(tree::Dict{T,Vector{T}}) where T
    list_tree=Vector{Vector{T}}(undef,length(tree))
    for subroot in eachindex(list_tree)
        list_tree[subroot]=tree[subroot]
    end
    return list_tree
end

#
dict_tree = Dict(5 => [], 4 => [], 2 => [], 3 => [4, 5], 1 => [2, 3])
list_tree = convert_to_list(dict_tree)
println(list_tree) # [[2, 3], Int64[], [4, 5], Int64[], Int64[]]
struct Tree{T}
    index::T
    sub::Vector{Tree{T}}
    Tree{T}(index) where T = new(index, Tree{T}[])
end
