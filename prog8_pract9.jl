function issingular_convert!(A)
    for k in firstindex(A,1):lastindex(A,1)
        imax = argmax(mod, @view A[k:end,k])       
        if isappoxzero(A[i,k])
            return nothing
        end
        colon_to_zeros!(A,k,imax)
    end
end