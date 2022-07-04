def insert(value)
    # value를 배열 끝에 삽입해 마지막 노드로 만듦
    @data << value

    # 새로 삽입한 노드의 인덱스를 저장
    new_node_index = @data.length - 1

    # 다음 루프는 '위로 트리클링'하는 알고리즘 실행
    # 새 노드가 루트 자리에 없고 새 노드가 부모 노드보다 크면
    while new_node_index > 0 && @data[new_node_index] > @data[parent_index(new_node_index)]
        # 새 노드와 부모 노드를 스왑
        @data[parent_index(new_node_index)], @data[new_node_index] = @data[new_node_index], @data[parent_index(new_node_index)]

        # 새 노드의 인덱스 업데이트
        new_node_index = parent_index(new_node_index)
    end
end