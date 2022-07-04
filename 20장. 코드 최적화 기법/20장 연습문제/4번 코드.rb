def greatest_product(array)
    greatest_number = -Float::INFINITY
    second_to_greatest_number = -Float::INFINITY

    lowest_number = Float::INFINITY
    second_to_lowest_number = Float::INFINITY

    array.each do |number|
        if number > greatest_number
            second_to_greatest_number = greatest_number
            greatest_number = number
        elsif number > second_to_greatest_number
            second_to_greatest_number = number
        end

        if number <= lowest_number
            second_to_lowest_number = lowest_number
            lowest_number = number
        elsif number > lowest_number && number < second_to_lowest_number
            second_to_lowest_number = number
        end
    end

    greatest_product_from_two_highest = greatest_number * second_to_greatest_number
    greatest_product_from_two_lowest = lowest_number * second_to_lowest_number

    if greatest_product_from_two_highest > greatest_product_from_two_lowest
        return greatest_product_from_two_highest
    else
        return greatest_product_from_two_lowest
    end
end