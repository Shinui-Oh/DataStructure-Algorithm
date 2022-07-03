def insert_at_index(index, value)
    # 전달받은 value로 새 노드 생성
    new_node = Node.new(value)

    # 리스트 앞에 삽입하는 경우
    if index == 0
        # 새 노드의 링크가 첫 번째 노드를 가리키게 함
        new_node.next_node - first_node

        # 새 노드를 리스트의 첫 노드로 만듦
        self.first_node = new_node

        return
    end

    # 앞이 아닌 다른 위치에 삽입하는 경우
    current_node = first_node
    current_index = 0

    # 삽입하려는 새 노드의 바로 앞 노드에 접근
    while current_index < (index - 1) do
        current_node = current_node.next_node
        current_index += 1
    end

    # 새 노드의 링크가 다음 노드를 가리키게 함
    new_node.next_node = current_node.next_node

    # 새 노드를 가리키도록 앞 노드의 링크 수정
    current_node.next_node = new_node
end