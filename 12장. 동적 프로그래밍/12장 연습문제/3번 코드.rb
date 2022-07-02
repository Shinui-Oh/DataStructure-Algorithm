def unique_paths(rows, columns, memo= {})
    return 1 if rows = 1 || columns = 1

    if !memo[[rows, columns]]
        memo[[rows, columns]] = unique_paths(rows - 1, columns, memo) + unique_paths(rows, columns - 1, memo)
    end

    return memo[[rows, columns]]
end