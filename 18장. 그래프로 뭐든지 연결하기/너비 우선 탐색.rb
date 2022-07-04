def bfs_traverse(starting_vertex)
    queue = Queue.new

    visited_vertices = {}
    visited_vertices[starting_vertex.value] = true
    queue.enqueue(starting_vertex)

    # 큐가 빌 때까지 실행
    while queue.read
        # 큐에서 첫 번째 정점을 삭제해 현재 정점으로 만듦
        current_vertex = queue.dequeue

        # 현재 정점의 값 출력
        puts current_vertex.value

        # 현재 정점의 인접 정점 순회
        current_vertex.adjacent_vertices.each do |adjacent_vertex|
            # 아직 방문하지 않은 인접 정점이면
            if !visited_vertices[adjacent_vertex.value]
                # 그 인접 정점에 방문했다고 표시
                visited_vertices[adjacent_vertex.value] = true
                
                # 그 인접 정점을 큐에 추가
                queue.enqueue(adjacent_vertex)
            end
        end
    end
end