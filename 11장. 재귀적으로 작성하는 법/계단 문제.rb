def number_of_paths(n)
    return 0 if n < 0
    return 1 if n == 1 || n == 0
    return number_of_paths(n - 1) + number_of_paths(n - 2) + number_of_paths(n - 3)
end