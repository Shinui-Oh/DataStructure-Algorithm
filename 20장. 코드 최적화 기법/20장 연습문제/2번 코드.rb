def find_missing_number(array)
    # 총합 계산
    full_sum = 0

    (1..array.length).each do |n|
        full_sum += n
    end

    # 현재 합 계산
    current_sum = 0

    array.each do |n|
        current_sum += n
    end

    # 두 합 간 차이가 빠진 숫자
    return full_sum - current_sum
end