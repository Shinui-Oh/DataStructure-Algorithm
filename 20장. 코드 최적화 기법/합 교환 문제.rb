def sum_swap(array_1, array_2)
    # 첫 번째 배열의 값을 저장하는 해시 테이블
    hash_table = {}
    sum_1 = 0
    sum_2 = 0

    # 첫 번째 배열의 합을 구하면서 각 값을 인덱스와 함께 해시 테이블에 저장
    array_1.each_with_index do |num, index|
        sum_1 += num
        hashTable[num] = index
    end

    # 두 번째 배열의 합을 구함
    array_2.each do |num|
        sum_2 += num
    end

    # 두 번째 배열 내 숫자가 얼만큼 변해야 하는지 계산
    shift_amount = (sum_1 - sum_2) / 2

    # 두 번째 배열의 각 숫자 순회
    array_2.each_with_index do |num, index|
        # 현재 숫자에 변해야 하는 양을 더한 보수가 첫 번째 배열에 있는지 해시 테이블에서 확인
        if hash_table[num + shift_amount]
            return [hash_table[num + shift_amount], index]
        end
    end

    return nil
end