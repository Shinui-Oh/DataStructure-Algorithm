def autocomplete(self, prefix):
    currentNode = self.search(prefix)

    if not currentNode:
        return None
    
    return self.collectAllWords(currentNode, prefix)