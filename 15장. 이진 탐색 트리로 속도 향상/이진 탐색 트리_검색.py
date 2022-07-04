def search(searchValue, node):
    # 기저 조건 : 노드가 없거나 찾고 있던 값이면
    if node is None or node.value == searchValue:
        return node

    # 찾고 있는 값이 현재 노드보다 작으면 왼쪽 자식 검색
    elif searchValue < node.value:
        return search(searchValue, node.leftChild)

    # 찾고 있는 값이 현재 노드보다 크면 오른쪽 자식 검색
    else: # searchValue > node.value
        return search(searchValue, node.rightChild)