def delete_middle_node(node)
    node.data = node.next_node.data
    node.next_node = node.next_node.next_node
end