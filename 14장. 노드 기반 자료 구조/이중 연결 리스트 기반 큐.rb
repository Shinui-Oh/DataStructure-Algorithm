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

    def remove_from_front
        removed_node = @first_node
        @first_node = @first_node.next_node
        
        return removed_node
    end
end

class Queue
    attr_accessor : data

    def initialize
        @data = DoublyLinkedList.new
    end

    def enque(element)
        @data.insert_at_end(element)
    end

    def deque
        removed_node = @data.remove_from_front

        return removed_node.data
    end

    def read
        return nil unless @data.first_node
        return @data.first_node.data
    end
end