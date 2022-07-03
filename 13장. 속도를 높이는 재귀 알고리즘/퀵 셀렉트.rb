def quickselect!(kth_lowest_value, left_index, right_index)
    # 기저 조건이면, 즉 하위 배열에 셀이 하나면 찾고 있던 값을 찾은 것
    if right_index - left_index <= 0
        return @array[left_index]
    end

    # 배열을 분할하고 피벗의 위치 가져옴
    pivot_index = partition!(left_index, right_index)

    # 찾고 있는 값이 피벗 왼쪽에 있으면
    if kth_lowest_value < pivot_index
        # 피벗 왼쪽의 하위 배열에 대해 재귀적으로 퀵 셀렉트 수행
        quickselect!(kth_lowest_value, left_index, pivot_index - 1)

    # 찾고 있는 값이 피벗 오른쪽에 있으면
    elsif kth_lowest_value > pivot_index
        # 피벗 오른쪽의 하위 배열에 대해 재귀적으로 퀵 셀렉트 수행
        quickselect!(kth_lowest_value, pivot_index + 1, right_index)

    else # kth_lowest_value == pivot_index
        # 분할 후 피벗의 인덱스가 k번째 작은 값의 인덱스와 같으면 찾고 있던 값을 찾은 것
        return @array[pivot_index]
    end
end