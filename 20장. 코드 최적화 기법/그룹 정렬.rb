def group_array(array)
    hash_table = {}
    new_array = []

    # 각 문자열의 합계를 해시 테이블에 저장
    array.each do |value|
        if hash_table[value]
            hash_table[value] += 1
        else
            hash_table[value] = 1
        end
    end
    
    # 해시 테이블을 순회하며 각 문자열의 개수만큼 새 배열에 덧붙임
    hash_table.each do |key, count|
        count.times do
            new_array << key
        end
    end

    return new_array
end