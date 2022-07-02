def select_even(array)
    return [] if array.empty?

    if array[0].even?
        return [array[0]] + select_even(array[1, array.length - 1])
    else
        return select_even(array[1, array.length - 1])
    end
end