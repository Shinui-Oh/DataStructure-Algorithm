def fib(n, memo):
    if n == 0 or n == 1:
        return n

    # (memo라는) 해시 테이블을 확인해 fib(n)이 이미 계산됐는지 확인
    if not memo.get(n):
        # n이 memo에 없으면 재귀로 fib(n)을 계산한 후 그 결과를 해시 테이블에 저장
        memo[n] = fib(n - 2, memo) + fib(n - 1, memo)

    # 이제 fib(n)의 결과가 확실히 memo에 들어있음 -> 그 값을 반환
    return memo[n]

# O(2^N) -> O(2N - 1)