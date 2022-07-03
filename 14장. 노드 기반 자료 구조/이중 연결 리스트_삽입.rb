def insert_at_end(value)
    new_node = Node.new(value)

    # 연결 리스트에 아직 원소가 없을 때
    if !first_node
        @first_node = new_node
        @last_node = new_node
    else # 연결 리스트에 원소가 하나 이상 있을 때
        new_node.previous_node = @last_node
        @last_node.next_node = new_node
        @last_node = new_node
    end
end