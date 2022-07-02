def count_x(string)
    # 기저 조건
    if string.length == 1
        if string[0] == "x"
            return 1
        else
            return 0
        end
    end

    if string[0] == "x"
        return 1 + count_x(string[1, string.length - 1])
    else
        return count_x(string[1, string.length - 1])
    end
end