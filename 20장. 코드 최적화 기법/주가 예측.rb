def increasing_triplet?(array)
    lowest_price = array[0]
    middle_price = Float::INFINITY

    array.each do |price|
        if price < lowest_price
            lowest_price = price

        # 현재 주가가 최저가보다 크지만 중간 주가보다 작으면
        elsif price <= middle_price
            middle_price = price
        
        # 현재 주가가 중간 주가보다 크면
        else
            return true
        end
    end

    return false
end