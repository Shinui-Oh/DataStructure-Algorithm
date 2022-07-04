def areAnagrams(firstString, secondString):
    # string은 파이썬에서 불변이므로 secondString 내 문자를 삭제할 수 있도록 secondString을 배열로 변환
    secondStringArray = list(secondString)

    for i in range(0, len(firstString)):
        # firstString을 아직 순회하는 중인데 secondStringArray가 벌써 비었으면
        if len(secondStringArray) == 0:
            return False
        
        for j in range(0, len(secondStringArray)):
            # firstString과 secondStringArray에 같은 문자가 있으면
            if firstString[i] == secondStringArray[j]:
                # 두 번째 배열에서 그 문자를 삭제하고 바깥 루프로 돌아감
                del secondStringArray[j]
                break
    
    # firstString을 모두 순회했을 때 secondStringArray에 남은 문자가 없어야만 두 문자열이 애너그램
    return len(secondStringArray) == 0