using .Vector2Ds
randpoints(random::Function, num::Integer) = [(random(),random()) for _ in 1:num]
5-element Vector{Tuple{Float64, Float64}}