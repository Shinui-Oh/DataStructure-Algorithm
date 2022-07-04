def areAnagrams(firstString, secondString):
    firstWordHashTable = {}
    secondWordHashTable = {}

    # 첫 번째 문자열로 해시 테이블 생성
    for char in firstString:
        if firstWordHashTable.get(char):
            firstWordHashTable[char] += 1
        else:
            firstWordHashTable[char] = 1

    
    # 두 번째 문자열로 해시 테이블 생성
    for char in secondString:
        if secondWordHashTable.get(char):
            secondWordHashTable[char] += 1
        else:
            secondWordHashTable[char] = 1

    # 두 해시 테이블이 동일해야 두 문자열이 애너그램
    return firstWordHashTable == secondWordHashTable