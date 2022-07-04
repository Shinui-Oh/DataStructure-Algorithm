def dfs_traverse(vertex, visited_vertices = {})
    # 정점을 해시 테이블에 추가해 방문했다고 표시
    visited_vertices[vertex.value] = true

    # 정점의 값을 출력해 제대로 순회하는지 확인
    puts vertex.value

    # 현재 정점의 인접 정점을 순회
    vertex.adjacent_vertices.each do |adjacent_vertex|
        # 이미 방문했던 인접 정점은 무시
        next if visited_vertices[adjacent_vertex.value]

        # 인접 정점에 대해 메서드를 재귀적으로 호출
        dfs_traverse(adjacent_vertex, visited_vertices)
    end
end