def triangle(n)
    return 1 if n == 1
    return n + triangle(n - 1)
end