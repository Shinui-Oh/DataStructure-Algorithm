def one_hundred_sum?(array)
    left_index = 0
    right_index = array.length - 1

    while left_index < array.length / 2
        if array[left_index] + array[right_index] != 100
            return false
        end
    
        left_index += 1
        right_index -= 1
    end

    return true
end