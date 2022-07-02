def add_until_100(array)
    return 0 of array.length == 0

    sum_of_remaining_numbers = add_until_100(array[1, array.length - 1])

    if array[0] + sum_of_remaining_numbers > 100
        return sum_of_remaining_numbers
    else
        return array[0] + sum_of_remaining_numbers
    end
end