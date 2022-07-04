def delete
    # 힙에서는 루트 노드만 삭제하므로 배열에서 마지막 노드를 팝해 루트 노드로 넣음
    @heap[0] = @heap.pop

    # '트리클 노드'의 현재 인덱스를 기록
    trickle_node_index = 0

    # 다음 루프는 '아래로 트리클링'하는 알고리즘 실행
    # 트리클 노드에 자기보다 큰 자식이 있으면 루프 실행
    while has_greater_child(trickle_node_index)
        # 더 큰 자식의 인덱스를 변수에 저장
        larger_child_index = calculate_larger_child_index(trickle_node_index)

        # 트리클 노드의 새 인덱스를 업데이트
        trickle_node_index = larger_child_index
    end
end

def has_greater_child(index)
    # index에 있는 노드에 왼쪽 자식이나 오른쪽 자식이 있는지 -> 어느 한 자식이라도 index에 있는 노드보다 큰지 확인
    (@data[left_child_index(index)] && @data[left_child_index(index)] > @data[index]) || (@data[right_child_index(index)] && @data[right_child_index(index)] > @data[index])
end

def calculate_larger_child_index(index)
    # 오른쪽 자식이 없으면
    if !@data[right_child_index(index)]
        # 왼쪽 자식의 인덱스를 반환
        return left_child_index(index)
    end

    # 오른쪽 자식의 값이 왼쪽 자식의 값보다 크면
    if @data[right_child_index(index)] > @data[left_child_index(index)]
        # 오른쪽 자식의 인덱스를 반환
        return right_child_index(index)
    else # 왼쪽 자식의 값이 오른쪽 자식의 값보다 크거나 같으면
        # 왼쪽 자식의 인덱스를 반환
        return left_child_index(index)
    end
end