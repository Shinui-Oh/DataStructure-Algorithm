def sort_temperatures(array)
    hash_table = {}

    # 온도 값 빈도수로 해시 테이블을 채움
    array.each do |temperature|
        if hash_table[temperature]
            hash_table[temperature] += 1
        else
            hash_table[temperature] = 1
        end
    end

    sorted_array = []

    # 부동 소수점 연산 오류가 발생하지 않게 루프 안에서 온도를 정수로 증가시킬 수 있도록 시작하기 전에 온도에 10을 곱함
    temperature = 970

    # 970부터 990까지 루프 실행
    while temperature <= 990
        # 해시 테이블이 현재 온도를 포함하면
        if hash_table[temperature / 10.0]
            # 현재 온도를 sorted_array에 그 빈도수만큼 덧붙임
            hash_table[temperature / 10.0].times do
                sorted_array << temperature / 10.0
            end
        end

        temperature += 1
    end

    return sorted_array
end