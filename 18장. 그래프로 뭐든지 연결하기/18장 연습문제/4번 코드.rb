def bfs(starting_vertex, search_value, visited_vertices = {})
    queue = Queue.new

    visited_vertices[starting_vertex] = true
    queue.enq(starting_vertex)

    while queue.read
        current_vertex = queue.dequeue

        return current_vertex if current_vertex == search_value

        current_vertex.adjacent_vertices.each do |adjacent_vertex|
            if !visited_vertices[adjacent_vertex.value]
                visited_vertices[adjacent_vertex.value] = true
                queue.enqueue(adjacent_vertex)
            end
        end
    end

    return nil
end