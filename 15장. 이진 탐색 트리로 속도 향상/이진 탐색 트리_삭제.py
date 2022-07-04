def delete(valueToDelete, node):
    # 트리 바닥에 도달해서 부모 노드에 자식이 없으면 기저 조건
    if node is None:
        return None
    
    # 삭제하려는 값ㅇ디 현재 노드보다 작거나 크면 현재 노드의 왼쪽 혹은 오른쪽 하위 트리에 대한 재귀 호출의 반환값을 각각 왼쪽 혹은 오른쪽 자식에 할당
    elif valueToDelete < node.value:
        node.leftChild = delete(valueToDelete, node.leftChild)
        
        # 현재 노드를 반환해서 현재 노드의 부모의 왼쪽 혹은 오른쪽 자식의 새로운 값으로 쓰이게 함
        return node

    elif valueToDelete > node.value:
        node.rightChild = delete(valueToDelete, node.rightChild)

        return node

    # 현재 노드가 삭제하려는 노드인 경우
    elif valueToDelete == node.value:
        # 현재 노드에 왼쪽 자식이 없다면 오른쪽 자식을 그 부모의 새 하위 트리로 반환함으로써 현재 노드 삭제
        if node.leftChild is None:
            return node.rightChild

        elif node.rightChild is None:
            return node.leftChild

        # 현재 노드에 자식이 둘이면 현재 노드의 값을 후속자 노드의 값으로 바꾸는 lift 함수를 호출함으로써 현재 노드를 삭제
        else:
            node.rightChild = lift(node.rightChild, node)

            return node

def lift(node, nodeToDelete):
    # 이 함수의 현재 노드에 왼쪽 자식이 있으면 왼쪽 하위 트리로 계속해서 내려가도록 함수를 재귀적으로 호출함으로써 후속자 노드 찾음
    if node.leftChild:
        node.leftChild = lift(node.leftChild, nodeToDelete)

        return node
    
    # 현재 노드에 왼쪽 자식이 없으면 이 함수의 현재 노드가 후속자 노드라는 뜻이므로 현재 노드의 값을 삭제하려는 노드의 새로운 값으로 할당
    else:
        nodeToDelete.value = node.value

        # 후속자 노드의 오른쪽 자식이 부모의 왼쪽 자식으로 쓰일 수 있도록 반환
        return node.rightChild