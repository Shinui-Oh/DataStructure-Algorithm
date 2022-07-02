def index_of_x(string)
    return 0 if string[0] == 'x'
    return index_of_x(string[1, string.length - 1]) + 1
end