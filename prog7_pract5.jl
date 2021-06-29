VectorXY{T<:Real} = NamedTuple{(:x, :y), Tuple{T,T}}

Base. +(a::VectorXY{T},b::VectorXY{T}) where T = VectorXY{T}(Tuple(a).+Tuple(b))

Base. -(a::VectorXY{T},b::VectorXY{T}) where T = VectorXY{T}(Tuple(a).-Tuple(b))

Base. *(coeff, a::VectorXY{T}) where T = VectorXY{T}(coeff.*Tuple(a))
Base.norm(a::VectorXY)=norm(Tuple(a))

LinearAlgebra.dot(a::VectorXY{T},b::VectorXY{T}) where T = dot(Tuple(a),Tuple(b))

Base. cos(a::VectorXY{T},b::VectorXY{T}) where T = dot(a,b)/norm(a)/norm(b)
xdot(a::VectorXY{T},b::VectorXY{T}) where T = a.x*b.y-a.y*b.x

Base. sin(a::VectorXY{T},b::VectorXY{T}) where T = xdot(a,b)/norm(a)/norm(b)