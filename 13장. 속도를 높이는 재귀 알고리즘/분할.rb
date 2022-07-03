class SortableArray
    attr_reader : array

    def initialize(array)
        @array = array
    end

    def partition!(left_pointer, right_pointer)
        # 항상 가장 오른쪽에 있는 값을 피벗으로 선택, 나중에 사용할 수 있도록 피벗의 인덱스 저장
        pivot_index = right_pointer

        # 피벗 값을 저장
        pivot = @array[pivot_index]

        # 피벗 바로 왼쪽에서 오른쪽 포인터를 시작
        right_pointer -= 1

        while true do
            # 피벗보다 크거나 같은 값을 가리킬 때까지 왼쪽 포인터를 오른쪽으로 옮김
            while @array[left_pointer] < pivot do
                left_pointer += 1
            end

            # 피벗보다 작거나 같은 값을 가리킬 때까지 오른쪽 포인터를 왼쪽으로 옮김
            while @array[right_pointer] > pivot do
                right_pointer -= 1
            end

            # 이제 왼쪽 포인터와 오른쪽 포인터 모드 이동 멈춤 -> 왼쪽 포인터가 오른쪽 포인터에 도달했거나 넘어섰는지 확인 -> 루프 빠져나간 후 피벗 교환
            if left_pointer >= right_pointer
                break

            # 왼쪽 포인터가 오른쪽 포인터보다 앞에 있으면 왼쪽 포인터와 오른쪽 포인터의 값 교환
            else
                @array[left_pointer], @array[right_pointer] = @array[right_pointer], @array[left_pointer]

                # 다음 번 왼쪽 포인터와 오른쪽 포인터의 이동을 위해 왼쪽 포인터를 오른쪽으로 옮김
                left_pointer += 1
            end
        end

        # 분할의 마지막 단계로 왼쪽 포인터의 값과 피벗 교환
        @array[left_pointer], @array[pivot_index], @array[pivot_index], @array[left_pointer]

        # 이어지는 예제에 나올 quicksort 메서드를 위해 left_pointer 반환
        return left_pointer
    end
end