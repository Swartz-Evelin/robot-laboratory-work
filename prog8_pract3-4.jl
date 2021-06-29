function exchangesort(a)
    for len in reverse(eachindex(a))
        i_max=arg_max(@view a[begin:len])
        a[i_max],a[len] = a[len],a[i_max]
    end
    return a
end