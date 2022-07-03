def last
    current_node = first_node

    while current_node.next_node
        current_node = current_node.next_node
    end

    return current_node.data
end