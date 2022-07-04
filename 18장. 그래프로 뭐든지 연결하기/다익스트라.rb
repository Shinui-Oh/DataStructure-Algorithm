def dijkstra_shortest_path(starting_city, final_destination)
    cheapest_prices_table = {}
    cheapest_previous_stopover_city_table = {}

    # 코드가 복잡해지지 않도록 아직 방문하지 않은 알려진 도시를 단순 배열에 기록
    unvisited_cities = []

    # 방문했던 도시를 해시 테이블에 기록
    visited_cities = {}

    # cheapest_prices_table의 첫 번째 키로서 시작 도시의 이름 추가, 시작 도시로 가는 비용은 없으니 값은 0
    cheapest_prices_table[starting_city.name] = 0

    current_city = starting_city

    # 다음 루프가 알고리즘의 핵심
    # 방문하지 않은 도시가 남아 있는 동안 실행
    while current_city
        # visited_cities 해시에 current_city의 이름을 추가해 정식으로 방문했음을 기록, unvisited_cities 리스트에서는 제거
        visited_cities[current_city.name] = true
        unvisited_cities.delete(current_city)

        # current_city의 인접 도시를 각각 순회
        current_city.routes.each do |adjacent_city, price|
            # 새 도시를 발견하면 unvisited_cities 리스트에 추가
            unvisited_cities << adjacent_city unless visited_cities[adjacent_city.name]

            # current_city를 마지막으로 경유하는 도시로 사용해 starting_city에서 adjacent_city로 가는 비용을 계산
            price_through_current_city = cheapest_prices_table[current_city.name] + price

            # starting_city에서 adjacent_city로 가는 비용이 지금까지 알려진 비용보다 저렴하면
            if !cheapest_prices_table[adjacent_city.name] || price_through_current_city < cheapest_prices_table[adjacent_city.name]
                # 두 표를 업데이트
                cheapest_prices_table[adjacent_city.name] = price_through_current_city
                cheapest_previous_stopover_city_table[adjacent_city.name] = current_city.name
            end
        end

        # 방문하지 않은 다음 도시 방문 -> starting_city에서 갈 수 있는 가장 저렴한 도시로 선택
        current_city = unvisited_cities.min do |city|
            cheapest_prices_table[city.name]
        end
    end

    # 핵심 알고리즘 끝
    # cheapest_prices_table은 starting_city에서 각 도시로 가는 가장 저렴한 비용을 모두 포함, starting_city에서 final_destination로 가는 정확한 경로를 계산하려면 다음 단계로 넘어감
    # 단순 배열로 최단 경로 생성
    shortest_path = []

    # 최단 경로를 구성하려면 final_destination에서부터 거슬러 올라가야 함 -> current_city_name을 final_destination으로 시작
    current_city_name = final_destination.name
    
    # starting_city에 도달할 때까지 루프 실행
    while current_city_name != starting_city.name
        # 도시가 나올 때마다 각 current_city_name을 shortest_path 배열에 추가
        shortest_path << current_city_name

        # cheapest_previous_stopover_city_table을 사용해 바로 이전 경유 도시를 따라감
        current_city_name = cheapest_previous_stopover_city_table[current_city_name]
    end

    # 마지막으로 starting_city를 shortest_path에 추가
    shortest_path << starting_city.name

    # 시작부터 끝까지 순서대로 경로를 나타내기 위해 출력을 뒤집음
    return shortest_path.reverse
end