def insert(value, node):
    if value < node.value:
        # 왼쪽 자식이 없으면 왼쪽 자식으로서 값 삽입
        if node.leftChild is None:
            node.leftChild = TreeNode(value)
        else:
            insert(value, node.leftChild)

    elif value > node.value:
        # 오른쪽 자식이 없으면 오른쪽 자식으로서 값 삽입
        if node.rightChild is None:
            node.rightChild = TreeNode(value)
        else:
            insert(value, node.rightChild)