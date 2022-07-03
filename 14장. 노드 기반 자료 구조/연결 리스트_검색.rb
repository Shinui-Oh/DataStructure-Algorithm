def index_of(value)
    # 리스트의 첫 번째 노드에서 시작
    current_node = first_node
    current_index = 0

    begin
        # 찾고 있던 데이터를 찾았으면 반환
        if current_node.data == value
            return current_index
        end

        # 그렇지 않으면 다음 노드로 이동
        current_node = current_node.next_node
        current_index += 1
    end while current_node

    # 데이터를 찾지 못한 채 전체 리스트를 순회했으면 널 반환
    return nil
end