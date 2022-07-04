class Heap
    def initialize
        @data = []
    end

    def root_node
        return @data.first
    end

    def last_node
        return @data.last
    end

    def left_child_index(index)
        return (index * 2) + 1
    end

    def right_child_index(index)
        return (index * 2) + 2
    end

    def parent_index(index)
        return (index - 1) / 2
    end
end