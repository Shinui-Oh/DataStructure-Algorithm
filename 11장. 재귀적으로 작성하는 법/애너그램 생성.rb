def anagrams_of(string)
    # 기저 조건 : string에 문자가 하나일 때 문자 하나짜리 문자열만 포함하는 배열 반환
    return [string[0]] if string.length == 1

    # 모든 애너그램을 저장할 배열 생성
    collection = []

    # 두 번째 문자부터 마지막 문자까지의 부분 문자열에서 모든 애너그램 찾기
    substring_anagrams = anagrams_of(string[1, string.length - 1])

    # 각 부분 문자열 순회
    substring_anagrams.each do |substring_anagram|
        # 0부터 string 끝을 하나 지난 인덱스까지 부분 문자열의 각 인덱스 순회
        (0..substring_anagram.length).each do |index|
            # 부분 문자열 애너그램의 복사본 생성
            copy = String.new(substring_anagram)

            # string의 첫 번째 문자를 부분 문자열 애너그램 복사본에 삽입
            # 삽입 위치는 루프에서 접근하고 있는 인덱스에 따라 달라짐 -> 새 문자열을 애너그램 컬렉션에 추가
            collection << copy.insert(index, string[0])
        end
    end

    # 전체 애너그램 컬렉션 반환
    return collection
end