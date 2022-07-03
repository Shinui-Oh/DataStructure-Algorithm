def reverse!
    previous_node = nil
    current_node = first_node
    
    while current_node
        next_node = current_node.next_node

        current_node.next_node = previous_node

        previous_node = current_node
        current_node = next_node
    end

    self.first_node = previous_node
end