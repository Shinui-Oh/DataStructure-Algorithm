def print_in_reverse
    current_node = last_node

    while current_node
        puts current_node.data
        current_node = current_node.previous_node
    end
end