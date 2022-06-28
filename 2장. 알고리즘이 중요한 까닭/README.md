# 2장. 알고리즘이 중요한 까닭

# I. 정렬된 배열(Ordered Array)

- 전형적인 배열과 거의 같음
- 값이 항상 순서대로 있어야 함

# II. 정렬된 배열의 검색

- 이진 검색(Binary Search)

```ruby
def linear_search(array, search_value)

	# 배열의 모든 원소를 순회함
	array.each_with_index do |element, index|

		# 원하는 값을 찾으면 그 인덱스를 반환함
		if element == search_value
			return index

		# 찾고 있던 값보다 큰 원소에 도달 시 루프를 일찍 종료함
		elsif element > search_value
			break
		end
	end

	# 배열에서 값을 찾지 못하면 널을 반환함
	return nil
end
```

# III. 이진 검색

- 정렬된 배열에서 원소를 절반씩 줄여가며 찾는 자료구조

```ruby
def binary_search(array, search_value)

	# 먼저 찾으려는 값이 있을 수 있는 상한선과 하한선을 정함
	# 최초의 상한선은 배열의 첫 번째 값, 하한선은 마지막 값
	lower_bound = 0
	upper_bound = array.length - 1

	# 상한선과 하한선 사이의 가운데 값을 계속해서 확인하는 루프 시작
	while lower_bound <= upper_bound do

		# 상한선과 하한선 사이에 중간 지점을 찾음(나누기 시 가장 가까운 정수로 올림)
		midpoint = (upper_bound + lower_bound) / 2

		# 중간 지점의 값 확인
		value_at_midpoint = array[midpoint]

		# 중간 지점의 값이 찾고 있던 값이면 검색을 끝냄
		# 그렇지 않으면 더 클지 작을지 추측한 바에 따라 상한선이나 하한선을 바꿈
		if search_value == value_at_midpoint
			return midpoint
		elsif search_value < value_at_midpoint
			upper_bound = midpoint - 1
		elsif search_value > value_at_midpoint
			lower_bound = midpoint + 1
		end
	end

	# 상한선과 하한선이 같아질 때까지 경곗값을 줄였다면 찾고 있는 값이 이 배열에 없다는 것
	return nil
end
```

# IV. 이진 검색 대 선형 검색

- 이진 검색 : 데이터를 두 배로 늘릴 때마다 최대 한 단계만 더 추가
- 선형 검색 : 원소 수만큼의 단계가 필요