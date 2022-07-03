def print
    current_node = first_node

    while current_node
        puts current_node.data
        current_node = current_node.next_node
    end
end