def autocorrect(self, word):
    currentNode = self.root

    # 지금까지 트라이에서 찾은 사용자 단어와 일치하는 부분을 기록 -> 이 문자열을 트라이에서 찾을 수 있는 최선의 접미사와 이어 붙여야 함
    wordFoundSoFar = ""

    for char in word:
        # 현재 노드의 자식 키 중에 현재 문자가 있으면
        if currentNode.children.get(char):
            wordFoundSoFar += char

            # 자식 노드를 따라감
            currentNode = currentNode.children.get(char)
        else:
            # 현재 노드의 자식 중에 현재 문자가 없으면 현재 노드부터 내려가면서 만들 수 있는 모든 접미사를 모아 첫 번째 접미사를 가져옴
            # 그 접미사를 지금까지 찾은 접두사에 이어 붙여 사용자가 입력하려던 문자를 제안
            return wordFoundSoFar + self.collectAllWords(currentNode)[0]

    # 사용자 단어를 트라이에서 찾았으면
    return word