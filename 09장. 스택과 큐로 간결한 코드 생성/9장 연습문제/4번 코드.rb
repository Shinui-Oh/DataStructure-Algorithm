def reverse(string)
    stack = Stack.new

    string.each_char do |char|
        stack.push(char)
    end

    new_string = " "

    while stack.read
        new_string += stack.pop
    end

    return new_string
end