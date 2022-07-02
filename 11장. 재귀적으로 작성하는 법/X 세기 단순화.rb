def count_x(string)
    # 기저 조건 : 빈 문자열
    return 0 if string.length == 0

    if string[0] == "x"
        return 1 + count_x(string[1, string.length - 1])
    else
        return count_x(string[1, string.length - 1])
    end
end