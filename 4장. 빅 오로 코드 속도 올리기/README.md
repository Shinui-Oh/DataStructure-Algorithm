# 4장. 빅 오로 코드 속도 올리기

# I. 버블 정렬

## 1. 버블 정렬(Bubble Sort)

- 단순 정렬(Simple Sort)
- 각 패스스루마다 정렬되지 않은 값 중 가장 큰 값, 버블이 올바른 위치로 가게 됨

## 2. 버블 정렬 실행 과정

1. 배열 내에서 연속된 두 항목을 가리킴(처음 두 항목), 두 항목을 비교함
2. 두 항목의 순서가 뒤바뀌어 있으면 두 항목을 교환함
3. 포인터를 오른쪽으로 한 셀씩 옮김
4. 배열의 끝까지 또는 이미 정렬된 값까지 1~3단계를 반복함 → 첫 패스스루(Pass-Through)
5. 두 포인터를 다시 배열의 처음 두 값으로 옮겨서 1~4단계를 다시 실행함 → 새로운 패스스루 실행, 교환이 일어나지 않는 패스스루가 생길 때까지 패스스루를 반복함

# II. 버블 정렬 실제로 해보기

```python
def bubble_sort(list):
	unsorted_until_index = len(list) - 1
	sorted = False

	while not sorted:
		sorted = True

		for i in range(unsorted_until_index):
			if list[i] > list[i + 1]:
				list[i], list[i + 1] = list[i + 1], list[i]
				sorted = False
		unsorted_until_index -= 1

	return list
```

# III. 버블 정렬의 효율성

- 비교(Comparison) : 어느 쪽이 더 큰지 두 수를 비교함
- 교환(Swap) : 정렬하기 위해 두 수를 교환함

| 데이터 원소 N개 | 최대 단계 수 |
| --- | --- |
| 5 | 20 |
| 10 | 90 |
| 20 | 380 |
| 40 | 1560 |
| 80 | 6320 |

| 데이터 원소 N개 | 버블 정렬의 단계 수 | ⁍ |
| --- | --- | --- |
| 5 | 20 | 25 |
| 10 | 90 | 100 |
| 20 | 380 | 400 |
| 40 | 1560 | 1600 |
| 80 | 6320 | 6400 |
- O(N^2) : 이차 시간(Quadratic Time)

# IV. 이차 문제

```jsx
function hasDuplicateValue(array) {
	let steps = 0; // 단계 수

	for(let i = 0; i < array.length; i++) {
		for(let j = 0; j < array.length; j++) {
			steps++; // 단계 수 증가

			if(i !== j && array[i] === array[j]) {
				return true;
			}
		}
	}

	console.log(steps); // 중복 값이 없으면 단계 수를 출력
	return false;
}

// O(N^2)
```

# V. 선형 해결법

```jsx
function hasDuplicateValue(array) {
	let steps = 0;

	for(let i = 0; i < array.length; i++) {
		steps++;

		if(existingNumbers[array[i]] === 1) {
			return true;
		} else {
			existingNumbers[array[i]] = 1;
		}
	}

	console.log(steps);
	return false;
}

// O(N)
```