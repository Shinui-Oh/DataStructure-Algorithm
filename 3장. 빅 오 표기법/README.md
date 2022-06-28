# 3장. 빅 오 표기법

# I. 빅 오 : 원소가 N개일 때 몇 단계가 필요할까?

- O(N) : 데이터 원소가 N개일 때 알고리즘에 몇 단계가 필요할까(알고리즘에 N단계가 필요함)
- O(1) : 상수 시간(Constant Time), 항상 한 단계

# II. 빅 오의 본질

- 데이터가 늘어날 때 알고리즘의 성능이 어떻게 바뀌는가
- 일반적으로 최악의 시나리오 → 빅 오

# III. 세 번째 유형의 알고리즘

- 이진 검색 : O(logN)
- O(logN) : 로그 시간(Log Time), 데이터가 두 배로 증가할 때마다 한 단계씩 늘어나는 알고리즘

# IV. 로가리즘

- 로그 : 로가리즘(Logarithm), 지수(Exponent)와 역(Inverse) 관계

# V. O(logN) 해석

- 원소가 하나가 될 때까지 데이터 원소를 계속해서 반으로 줄이는 만큼의 단계 수가 걸림

| 원소 개수(N) | O(N) | O(logN) |
| --- | --- | --- |
| 8 | 8 | 3 |
| 16 | 16 | 4 |
| 32 | 32 | 5 |
| 64 | 64 | 6 |
| 128 | 128 | 7 |
| 256 | 256 | 8 |
| 512 | 512 | 9 |
| 1024 | 1024 | 10 |

# VI. 실제 예제

```python
things = ['apples', 'baboons', 'cribs', 'dulcimers']

for things in things:
	print("Here's a thing : %s" % thing)

# O(N)
```

```python
def is_prime(number):
	for i in range(2, number):
		if number % i == 0:
			return False
	return True

# O(N)
```