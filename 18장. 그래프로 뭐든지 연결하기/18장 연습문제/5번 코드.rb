def find_shortest_path(first_vertex, second_vertex, visited_vertices = {})
    queue = Queue.new

    # 다익스트라의 알고리즘처럼 각 정점 바로 이전에 방문했던 정점을 표에 기록
    previous_vertex_table = {}

    # 너비 우선 탐색 이용
    visited_vertices[first_vertex.value] = true
    queue.enqueue(first_vertex)

    while queue.read
        current_vertex = queue.dequeue
        current_vertex.adjacent_vertices.each do |adjacent_vertex|
            if !visited_vertices[adjacent_vertex.value]
                visited_vertices[adjacent_vertex.value] = true
                queue.enqueue(adjacent_vertex)

                # previous_vertex 표에 adjacent_vertex을 키로 current_vertex를 값으로 저장
                # current_vertex가 adjacent_vertex로 가기 바로 직전에 방문하는 정점이라는 뜻
                previous_vertex_table[adjacent_vertex.value] = current_vertex.value
            end
        end
    end

    # 다익스트라의 알고리즘처럼 previous_vertex_table을 사용해 거슬러 올라가며 최단 경로를 생성
    shortest_path = []
    current_vertex_value = second_vertex.value

    while current_vertex_value != first_vertex.value
        shortest_path << current_vertex_value
        current_vertex_value = previous_vertex_table[current_vertex_value]
    end

    shortest_path << first_vertex.value
    
    return shortest_path.reverse
end