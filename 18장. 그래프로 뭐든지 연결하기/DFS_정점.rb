def dfs_traverse(vertex, visited_vertices = {})
    # 찾고 있던 정점이면 원래의 vertex를 반환
    return vertex if vertex.value == search_value

    visited_vertices[vertex.value] = true

    vertex.adjacent_vertices.each do |adjacent_vertex|
        next if visited_vertices[adjacent_vertex.value]

        # 인접 정점이 찾고 있던 정점이면 그 인접 정점을 반환
        return adjacent_vertex if adjacent_vertex.value == search_value

        # 인접 정점에 메서드를 재귀적으로 호출해 찾고 있던 정점을 계속 찾음
        vertex_were_searching_for = dfs_traverse(adjacent_vertex, search_value, visited_vertices)

        # 위 재귀에서 올바른 정점을 찾았다면 그 정점을 반환
        return vertex_were_searching_for if vertex_were_searching_for
    end

    # 찾고 있던 정점을 찾지 못했다면
    return nil
end