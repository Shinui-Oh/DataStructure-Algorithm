def reverse(string)
    # 기저 조건 : 문자 하나로 된 문자열
    return string[0] if string.length == 1

    return reverse(string[1, string.length - 1]) + string[0]
end