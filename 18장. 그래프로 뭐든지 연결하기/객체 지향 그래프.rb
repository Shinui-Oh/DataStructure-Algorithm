def Vertax
    attr_accessor :value, :adjacent_vertices

    def initialize(value)
        @value = value
        @adjacent_vertices = []
    end

    # 방향 그래프
    def add_adjacent_vertex(vertex)
        @adjacent_vertices << vertex
    end

    # 무방향 그래프
    def add_adjacent_vertex(vertax)
        return if adjacent_vertices.include?(vertax)
        @adjacent_vertices << vertax
        vertax.add_adjacent_vertex(self)
    end
end