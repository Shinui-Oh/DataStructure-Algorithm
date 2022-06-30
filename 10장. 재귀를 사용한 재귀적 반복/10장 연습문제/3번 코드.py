def sum(low, high):
    # 기저 조건
    if high == low:
        return low

    return high + sum(low, high - 1)