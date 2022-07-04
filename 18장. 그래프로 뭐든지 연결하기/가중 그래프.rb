class WeightedGraphVertex
    attr_accessor :value, :adjacent_vertices

    def initialize(value)
        @value = value
        @adjacent_vertices = []
    end

    def add_adjacent_vertex(vertex, weight)
        @adjacent_vertices[vertex] = weight
    end
end