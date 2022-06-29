def average_of_even_numbers(array)
    # 짝수의 평균은 짝수의 합을 짝수 개수로 나눈 값, 합과 개수를 모두 기록
    sum = 0.0
    count_of_even_numbers = 0

    # 배열의 각 수를 순회하면서 짝수가 나오면 합과 개수를 수정
    array.each do |number|
        if number.even?
            sum += number
            count_of_even_numbers += 1
        end
    end

    # 평균 반환
    return sum / count_of_even_numbers
end