is_one_area(equation::Function, P1::VectorXY{T},P2::VectorXY{T}) where T= (equation(P1)*equation(P2)>0)
line_equation(P::VectorXY{T},A::VectorXY{T},B::VectorXY{T}) where T = 
is_one(P1::VectorXY{T},P2::VectorXY{T}) where T = is_one_area(P->line_equation(P,A,B), P1, P2)
VectorXY{T<:Real} = NamedTuple{(:x, :y), Tuple{T,T}}

Base. +(a::VectorXY{T},b::VectorXY{T}) where T = VectorXY{T}(Tuple(a).+Tuple(b))

Base. -(a::VectorXY{T},b::VectorXY{T}) where T = VectorXY{T}(Tuple(a).-Tuple(b))

Base. *(coeff, a::VectorXY{T}) where T = VectorXY{T}(coeff.*Tuple(a))
Base. sin(a::VectorXY{T},b::VectorXY{T}) where T = xdot(a,b)/norm(a)/norm(b)