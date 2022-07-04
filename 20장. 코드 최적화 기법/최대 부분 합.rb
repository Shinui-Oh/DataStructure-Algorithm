def max_sum(array)
    current_sum = 0
    greatest_sum = 0

    array.each do |num|
        # 현재 합이 음수면 현재 합을 0으로 되돌림
        if current_sum + num < 0
            current_sum = 0
        else
            current_sum += num

            # 현재 합이 지금까지의 최대 합이라면 현재 합을 최대 합이라고 탐욕스럽게 가정
            greatest_sum = current_sum if current_sum > greatest_sum
        end
    end

    return greatest_sum
end