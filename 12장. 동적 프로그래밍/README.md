# 12장. 동적 프로그래밍

# I. 불필요한 재귀 호출

```ruby
def max(array)
		# 기저 조건 : 배열에 원소가 하나면 최댓값의 정의에 따라 그 원소가 최댓값
		return array[0] if array.length == 1

		# 첫 번째 원소와 나머지 배열에서 가장 큰 원소를 비교 -> 첫 번쨰 원소가 더 크면 그 원소를 최댓값으로 반환
		if array[0] > max(array[1, array.length - 1])
				return array[0]
		# 그렇지 않으면 나머지 배열의 최댓값을 반환
		else
				return max(array[1, array.length - 1])
		end
end
```

- 호출 사슬(Call Chain) : 맨 밑 부분 ‘바닥’ 호출부터 분석
- max 함수 15번 호출

# II. 빅 오를 위한 작은 개선

```ruby
def max(array)
	return array[0] if array.length == 1

	# 나머지 배열의 최댓값을 계산해서 변수에 저장
	max_of_remainder = max(array[1, array.length - 1])

	# 첫 번째 수와 이 변수를 비교
	if array[0] > max_of_remainder
		return array[0]
	else
		return max_of_remainder
	end
end
```

# III. 재귀의 효율성

- 불필요한 재귀 호출 피하는 것 → 재귀를 빠르게 만드는 핵심
- 기저 조건에 따라 재귀의 속도가 달라짐

# IV. 하위 문제 중첩

```python
def fib(n):
	# 기저 조건은 수열의 처음 두 수
	if n == 0 or n == 1:
		return n

	# 앞의 두 피보나치 수의 합 반환
	return fib(n - 2) + fib(n - 1)
```

- 피보나치 수열(Fibonacci Sequence)
- 하위 문제 중첩(Overlapping Subproblems) : 동일한 문제를 작게 만들어 해결함으로써 어떤 문제를 풀 때 더 작은 문제를 해결하는 것

# V. 메모이제이션을 통한 동적 프로그래밍

- 동적 프로그래밍(Dynamic Programming) : 하위 문제가 중첩되는 재귀 문제를 최적화하는 절차
- 메모이제이션(Memoization) : 하위 문제가 중첩될 때 재귀 호출을 감소시키는 간단하면서도 아주 뛰어난 기법 → 계산한 함수 결과를 기억해 재귀 호출 감소

# VI. 상향식을 통한 동적 프로그래밍

- 상향식 : 같은 문제를 재귀 대신 다른 방식으로 해결
- 재귀적으로 풀 수 있는 문제에 대해 중첩되는 하위 문제를 중복 호출하지 않게 해줌