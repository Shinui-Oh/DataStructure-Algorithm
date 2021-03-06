# 18장. 그래프로 뭐든지 연결하기

# I. 그래프

- 관계에 특화된 자료 구조, 데이터가 서로 어떻게 연결되는지 쉽게 이해 가능
- 모든 트리는 그래프, 그래프가 모두 트리는 아님
- 트리로 규정되는 그래프에는 사이클(Cycle)이 있을 수 없으며 모든 노드가 서로 연결
- 정점(Vertex) : 각각의 데이터
- 간선(Edge) : 노드, 정점을 잇는 선
- 인접한다(Adjacent) : 간선으로 연결된 정점
- 이웃(Neighbor) : 인접한 정점
- 연결 그래프(Connected Graph) : 모든 정점이 어떻게든 서로 연결된 그래프

# II. 방향 그래프(Directed Graph)

- 화살표로 관계를 나타낸 그래프

# III. 객체 지향 그래프 구현

- 모든 정점이 연결되어 있음 → 정점 하나에만 접근할 수 있으면 거기서부터 다른 정점을 모두 찾을 수 있음
- 인접 리스트 : 단순 리스트를 사용해 정점의 인접 정점을 저장
- 인접 행렬 : 2차원 배열로 정점의 인접 정점을 저장

# IV. 그래프 탐색

- 그래프 내 한 정점에 접근할 수 있을 때 그 정점과 어떻게든 연결된 또 다른 특정 정점을 찾는 것
- 경로(Path) : 한 정점에서 다른 정점으로 가는 간선들의 순열

# V. 깊이 우선 탐색(Depth-First Search, DFS)

- 그래프를 탐색하는 동안 시장 정점에서부터 빨리 멀어져야 할 때
1. 그래프 내 임의의 정점에서 시작
2. 현재 정점을 해시 테이블에 추가해 방문했던 정점임을 표시
3. 현재 정점의 인접 정점을 순회
4. 방문했던 인접 정점이면 무시
5. 방문하지 않았던 인접 정점이면 그 정점에 대해 재귀적으로 깊이 우선 탐색 수행

# VI. 너비 우선 탐색(Breadth-First Search, BFS)

- 깊이 우선 탐색과 달리 재귀를 사용하지 않음
- 그래프를 탐색하는 동안 시작 정점 가까이 있어야 할 때
1. 그래프 내 아무 정점에서나 시작 → 시작 정점
2. 시작 정점을 해시 테이블에 추가해 방문했다고 표시
3. 시작 정점을 큐에 추가
4. 큐가 빌 때까지 실행하는 루프 시작
5. 루프 안에서 큐의 첫 번째 정점 삭제 → 현재 정점
6. 현재 정점의 인접 정점 순회
7. 이미 방문한 인접 정점이면 무시
8. 아직 방문하지 않은 인접 정점이면 해시 테이블에 추가해 방문했다고 표시한 후 큐에 추가
9. 큐가 빌 때까지 루프 반복

# VII. 그래프 탐색의 효율성

- 순회하는 각 정점의 인접 정점까지 모두 순회
- 그래프 내 정점 개수만으로는 단계를 샐 수 없음 → 각 정점의 인접 정점이 몇 개인지도 함께 고려
- O(V + E) → V(정점), E(간선)

# VIII. 가중 그래프(Weighted Graph)

- 그래프 간선에 정보를 추가한 것
- 최단 경로 문제 : 목적지로 가는 최소 비용을 찾는 알고리즘

# IX. 다익스트라 알고리즘

1. 시작 정점에 방문해 ‘현재 정점’으로 만듦
2. 현재 정점에서 각 인접 정점으로의 비용 확인
3. 시작 정점에서 인접 정점으로의 비용이 현재 cheapest_prices_table의 비용보다 저렴하면
    1. cheapest_prices_table을 더 저렴한 비용으로 업데이트
    2. 인접 정점을 키로, 현재 정점을 값으로 해서 cheapest_previous_stopover_table을 업데이트
4. 다음으로 시작 정점에서 방문하지 않은 정점 중 비용이 가장 저렴한 정점에 방문해 현재 정점으로 만듦
5. 알려진 정점에 모두 방문할 때까지 2~4단계 반복
- 최악의 시나리오(각 정점이 그래프 내에 다른 모든 정점으로 이어지는 간선을 하나씩 포함할 때) : O(V^2)