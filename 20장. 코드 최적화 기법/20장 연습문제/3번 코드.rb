def find_greatest_profit(array)
    buy_price = array[0]
    greatest_profit = 0

    array.each do |price|
        potential_profit = price - buy_price

        if price < buy_price
            buy_price = price
        elsif potential_profit > greatest_profit
            greatest_profit = potential_profit
        end
    end

    return greatest_profit
end