def read(index)
    # 리스트의 첫 번째 노드에서 시작
    current_node = first_node
    current_index = 0

    while current_index < index do
        # 찾고 있는 인덱스에 도착할 때까지 각 노드의 링크를 계속 따라감
        current_node = current_node.next_node
        current_index += 1
        
        # 리스트 끝에 도착했다면 찾고 있는 값이 리스트에 없다는 뜻 -> 널 반환
        return nil unless current_node
    end

    return current_node.data
end