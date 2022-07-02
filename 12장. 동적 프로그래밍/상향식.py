def fib(n):
    if n == 0:
        return 0

    # a, b는 각각 수열의 처음 두 수로 시작
    a = 0
    b = 1

    # 1부터 n까지 루프 수행
    for i in range(1, n):
        # a, b는 각각 수열의 다음 수로 이동 -> b = b + a, a = b
        temp = a
        a = b
        b = temp + a
    
    return b

# O(N)