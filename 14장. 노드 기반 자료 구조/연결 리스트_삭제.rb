def delete_at_index(index)
    # 첫 번째 노드를 삭제하는 경우
    if index == 0
        # 단순히 현재 두 번째 노드를 첫 번째 노드에 할당
        self.first_node = first_node.next_node
        
        return
    end

    current_node = first_node
    current_index = 0

    # 먼저 삭제하려는 노드의 바로 앞 노드를 찾아 current_node에 할당
    while current_index < (index - 1) do
        current_node = current_node.next_node
        current_index += 1
    end

    # 삭제하려는 노드의 바로 뒤 노드를 찾음
    node_after_deleted_node = current_node.next_node.next_node

    # current_node의 링크가 node_after_deleted_node를 가리키도록 수정 -> 삭제하려는 노드가 리스트에서 제외
    current_node.next_node = node_after_deleted_node
end