# 5장. 빅 오를 사용하거나 사용하지 않는 코드 최적화

# I. 선택 정렬(Selection Sort)

1. 배열의 각 셀을 왼쪽부터 오른쪽 방향으로 확인하면서 어떤 값이 최솟값인지 결정함, 한 셀씩 이동하면서 현재까지 가장 작은 값을 기록함, 변수에 들어있는 값보다 작은 값이 들어있는 셀을 만나면 변수가 새 인덱스를 가리키도록 값을 대체함
2. 앞에서 결정된 인덱스의 값과 패스스루를 처음 시작 했을 때의 값을 교환함
3. 매 패스스루는 1, 2단계로 이뤄짐, 배열 끝에서 시작하는 패스스루에 도달할 때까지 패스스루를 반복함

# II. 선택 정렬 실제로 해보기

```jsx
function selectionSort(array) {
	for(let i = 0; i < array.length - 1; i++) {
		let lowestNumberIndex = i;

		for(let j = i + 1; j < array.length; j++) {
			if(array[j] < array[lowestNumberIndex]) {
				lowestNumberIndex = j;
			}
		}

		if(lowestNumberIndex != i) {
			let temp = array[i];
			array[i] = array[lowestNumberIndex];
			array[lowestNumberIndex] = temp;
		}
	}

	return array;
}
```

# III. 선택 정렬의 효율성

| 패스스루 번호 | 비교 횟수 |
| --- | --- |
| 1 | 4번 |
| 2 | 3번 |
| 3 | 2번 |
| 4 | 1번 |

| 원소 개수(N) | 버블 정렬에서 최대 단계 수 | 선택 정렬에서 최대 단계 수 |
| --- | --- | --- |
| 5 | 5 * 5 / 2 = 12.5 | 14(10번의 비교 + 4번의 교환) |
| 10 | 10 * 10 / 2 = 50 | 54(45번의 비교 + 9번의 교환) |
| 20 | 20 * 20 / 2 = 200 | 199(180번의 비교 + 19번의 교환) |
| 40 | 40 * 40 / 2 = 800 | 819(780번의 비교 + 39번의 교환) |
| 80 | 80 * 80 / 2 = 3200 | 3239(3160번의 비교 + 79번의 교환) |

# IV. 상수 무시하기

- 빅 오 표기법은 상수를 무시함
- N / 2 → N, N^2 + 10 → N^2, 2N → N

# V. 빅 오 카테고리

- 일반적인 카테고리의 알고리즘 속도만 고려함

```python
def print_nmbers_version_one(upperLimit):
	number = 2

	while number <= upperLimit:
		# number가 짝수면 출력
		if number % 2 == 0:
			print(number)

	    number += 1

# O(N) -> O(N) 그대로
```

```python
def print_numbers_version_two(upperLimit):
    number = 2
    
    while number <= upperLimit:
		print(number)

		# 정의에 따라 다음 짝수로 2씩 증가
		number += 2

# O(N / 2) -> O(N) 상수 무시
```