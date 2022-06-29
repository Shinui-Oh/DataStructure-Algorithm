# 6장. 긍정적인 시나리오 최적화

# I. 삽입 정렬(Insertion Sort)

1. 첫 번째 패스스루에서 임시로 인덱스 1의 값을 삭제하고 이 값을 임시 변수에 저장, 인덱스 1에 값이 없으므로 공백이 생김, 이후 각 패스스루마다 다음 인덱스의 값 삭제
2. 다음으로 공백 왼쪽에 있는 각 값을 가져와 임시 변수에 있는 값과 비교하는 시프트 단계를 시작, 공백 왼쪽에 있는 값이 임시 변수에 있는 값보다 크면 그 값을 오른쪽으로 시프트, 값을 오른쪽으로 시프트했으므로 자연히 공백이 왼쪽으로 옮겨짐, 임시로 삭제한 값보다 작은 값을 만나거나 배열의 왼쪽 끝에 도달해야 시프트 단계가 끝
3. 임시로 제거한 값을 현재 공백에 삽입
4. 1~3단계가 하나의 패스스루, 배열의 마지막 인덱스에서 패스스루를 시작할 때까지 패스스루 반복

# II. 삽입 정렬 실제로 해보기

```python
def insertion_sort(array):
	for index in range(1, len(array)):
		temp_value = array[index]
		position = index - 1

		while position >= 0:
			if array[position] > temp_value:
				array[position + 1] = array[position]
				position = position - 1
			else:
				break

		array[position + 1] = temp_value

	return array
```

# III. 삽입 정렬의 효율성

- 최악의 경우 N^2번(비교 & 시프트) + N - 1번(삭제) + N - 1번(삽입) = N^2 + 2N - 2단계
- 빅 오 표기법 → O(N^2)

# IV. 평균적인 경우

- 최악의 시나리오 : O(N^2)
- 평균 시나리오 : O(N^2 / 2)
- 최선의 시나리오 : O(N)
- 정렬된 정도에 따라 삽입 정렬, 선택 정렬의 효율성이 다름 → 어느 것이 좋다고 말할 수 없음

# V. 실제 예제

```jsx
function intersection(firstArray, secondArray) {
	let result = [];

	for(let i = 0; i < firstArray.length; i++) {
		for(let j = 0; j < secondArray.length; j++) {
			if(firstArray[i] == secondArray[j]) {
				result.push(firstArray[i]);
				break;
			}
	    }
	}

	return result;
}

// O(N^2)
```