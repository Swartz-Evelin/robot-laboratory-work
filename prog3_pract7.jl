rows = rowvals(A) 
  vals = nonzeros(A) 
  m, n = size(A)
  for j = 1:n
     for i in nzrange(A, j) 

        index_row = rows[i]
        val = vals[i]
        
     end
  end
  mutable struct BiTree{T}
    index::T
    left::Union{BiTree{T},Nothing}
    right::Union{BiTree{T},Nothing}
    BiTree{T}(index) where T = new(index,nothing,nothing)
end
