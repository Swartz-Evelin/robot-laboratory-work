struct Tree{T}
    index::T
    sub::Vector{Tree{T}}
    Tree(index)=new(index, Tree{T}[])
end
struct NTree{N,T}
    index::T
    sub::Vector{<:Union{NTree{N,T}, Nothing}}
    NTree{N,T}(index) where {N,T} = new(index, [nothing for _ in 1:N])
end
