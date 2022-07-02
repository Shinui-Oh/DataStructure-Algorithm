def character_count(array)
    # 다음의 기저 조건도 가능 : return array[0].length if array.length == 1
    # 기저 조건 : 배열이 비었을 때
    return 0 if array.length == 0

    return array[0].length + character_count(array[1, array.length - 1])
end