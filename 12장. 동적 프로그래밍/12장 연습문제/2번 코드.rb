def golomb(n, memo = {})
    return 1 if n == 1

    if !memo[n]
        memo[n] = 1 + golomb(n - golomb(golomb(n - 1, memo), memo), memo)
    end

    return memo[n]
end