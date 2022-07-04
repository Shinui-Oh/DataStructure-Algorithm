def max(array)
    greatest_number = array[0]

    array.each do |number|
        if number > greatest_number
            greatest_number = number
        end
    end

    return greatest_number
end

# O(N)