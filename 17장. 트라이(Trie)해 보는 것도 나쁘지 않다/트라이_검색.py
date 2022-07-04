def search(self, word):
    currentNode = self.root

    for char in word:
        # 현재 노드에 현재 문자를 키로 하는 자식이 있으면
        if currentNode.children.get(char):
            # 자식 노드를 따라감
            currentNode = currentNode.children[char]
        else:
            # 현재 노드의 자식 중에 현재 문자가 없으면 검색하려는 단어가 트라이에 없는 것
            return None
    
    return currentNode