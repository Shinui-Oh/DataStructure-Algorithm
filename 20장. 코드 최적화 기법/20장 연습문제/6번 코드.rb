def longest_sequence_length(array)
    hash_table = {}
    greatest_sequence_length = 0

    # 숫자를 키로 해서 해시 테이블을 채움
    array.each do |number|
        hash_table[number] = true
    end

    # 배열의 각 숫자 순회
    array.each do |number|
        # 현재 숫자가 순열의 시작이면
        if !hash_table[number - 1]
            # 현재 숫자부터 현재 순열의 길이를 재기 시작 -> 현재 숫자가 순열의 첫 번째 숫자이므로 순열의 길이는 현재 1
            current_sequence_length = 1

            # 곧 나올 while 루프에서 사용할 current_number에 현재 숫자 할당
            current_number = number

            # 순열에 들어갈 다음 숫자가 있는 한 while 루프 실행
            while hash_table[current_number + 1]
                # 순열의 다음 숫자로 넘어감
                current_number += 1

                # 순열의 길이를 하나 증가
                current_sequence_length += 1

                # 탐욕스러운 방식으로 가장 긴 순열 길이 저장
                if current_sequence_length > greatest_sequence_length
                    greatest_sequence_length = current_sequence_length
                end
            end
        end
    end

    return greatest_sequence_length
end