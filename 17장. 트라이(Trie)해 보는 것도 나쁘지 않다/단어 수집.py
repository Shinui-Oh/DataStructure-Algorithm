def collectAllWords(self, node = None, word = "", words = ""):
    # 메서드는 인수 3개를 받음
    # 첫 번째 인수인 node는 그 자손들에게서 단어를 수집할 노드
    # 두 번째 인수인 word는 빈 문자열로 시작, 트라이를 이동하면서 문자가 추가
    # 세 번째 인수인 words는 빈 배열로 시작, 함수가 끝날 때는 트라이 내 모든 단어 포함

    # 현재 노드는 첫 번째 인자로 전달받은 node -> 아무것도 받지 않았으면 루트 노드
    currentNode = node or self.root

    # 현재 노드의 자식들을 모두 순회
    for key, childNode in currentNode.children.items():
        # 현재 키가 *이면 완전한 단어 끝에 도달했다는 뜻 -> 이 단어를 words 배열에 추가
        if key == "*":
            words.append(word)
        else: # 아직 단어 중간이면 그 자식 노드에 대해 이 함수를 재귀적으로 호출
            self.collectAllWords(childNode, word + key, words)

    return words