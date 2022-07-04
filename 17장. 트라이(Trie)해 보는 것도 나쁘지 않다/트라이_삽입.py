def insert(self, word):
    currentNode = self.root

    for char in word:
        # 현재 노드에 현재 문자를 키로 하는 자식이 있으면
        if currentNode.children.get(char):
            # 자식 노드를 따라감
            currentNode = currentNode.children[char]
        else:
            # 현재 노드의 자식 중에 현재 문자가 없으면 그 문자를 새 자식 노드로 추가
            newNode = TrieNode()
            currentNode.children[char] = newNode

            # 새로 추가한 노드를 따라감
            currentNode = newNode
    
    # 단어 전체를 트라이에 삽입했으면 마지막으로 *를 추가
    currentNode.children["*"] = None