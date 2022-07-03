def merge(array_1, array_2)
    new_array = []
    array_1_pointer = 0
    array_2_pointer = 0

    # 두 배열이 모두 끝에 도달할 때까지 루프 실행
    while array_1_pointer < array_1.length || array_2_pointer < array_2.length
        # 첫 번째 배열의 끝에 이미 도달했으면 두 번째 배열의 항목을 추가
        if !array_1[array_1_pointer]
            new_array << array_2[array_2_pointer]
            array_2_pointer += 1
        
        # 두 번째 배열의 끝에 이미 도달했으면 첫 번째 배열의 항목을 추가
        elsif !array_2[array_2_pointer]
            new_array << array_1[array_1_pointer]
            array_1_pointer += 1

        # 첫 번째 배열의 현재 수가 두 번째 배열의 현재 수보다 작으면 첫 번째 배열의 수를 추가
        elsif array_1[array_1_pointer] < array_2[array_2_pointer]
            new_array << array_1[array_1_pointer]
            array_1_pointer += 1
        
        # 두 번째 배열의 현재 수가 첫 번째 배열의 현재 수보다 작거나 같으면 두 번째 배열의 수를 추가
        else
            new_array << array_2[array_2_pointer]
            array_2_pointer += 1
        end
    end

    return new_array
end