def unique_paths(rows, columns)
    return 1 if rows == 1 || columns == 1
    return unique_paths(rows - 1, columns) + unique_paths(rows, columns - 1)
end