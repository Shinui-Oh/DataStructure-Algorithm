class Node
    attr_accessor : data, : next_node, : previous_node

    def initialize(data)
        @data = data
    end
end

class DoublyLinkedList
    attr_accessor : first_node, : last_node

    def initialize(first_node = nil, last_node = nil)
        @first_node = first_node
        @last_node = last_node
    end
end