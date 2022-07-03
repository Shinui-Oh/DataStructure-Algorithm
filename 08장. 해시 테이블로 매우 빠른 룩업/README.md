# 8장. 해시 테이블로 매우 빠른 룩업

# I. 해시 테이블(Hash Table)

- 쌍으로 이루어진 값들의 리스트
- 첫 번째 항목 → 키(Key), 두 번째 항목 → 값(Value)
- 룩업 : 키 값 반환

# II. 해시 함수로 해싱

- 해싱(Hashing) : 원본 문자열을 알아볼 수 없는 난해한 문자열로 변환
- 해시 함수(Hash Function) : 임의의 길이의 데이터를 고정된 길이의 데이터로 매핑하는 함수

# III. 해시 테이블 룩업

- 해시 테이블에서 각 값의 위치는 키로 결정
- 키 자체를 해싱해 키와 연관된 값이 놓여야 하는 인덱스 계산
- O(1)
- 단방향 룩업 : 키를 모른 채 값을 찾으려면 해시 테이블 내 모든 키/값 쌍을 검색 → O(N)

# IV. 충돌 해결

- 충돌(Collision) : 이미 채워진 셀에 데이터를 추가하는 것
- 분리 연결법(Separate Chaining) : 충돌이 발생했을 때 셀에 하나의 값을 넣는 대신 배열로의 참조를 넣는 방법

# V. 효율적인 해시 테이블 만들기

## 1. 해시 테이블의 효율성

- 해시 테이블에 얼마나 많은 데이터를 저장하는가
- 해시 테이블에서 얼마나 많은 셀을 쓸 수 있는가
- 어떤 해시 함수를 사용하는가

## 2. 휼륭한 충돌 조정

- 많은 메모리를 낭비하지 않으면서 균형을 유지하며 충돌을 피함
- 부하율(Load Factor) : 데이터와 셀 간 비율, 0.7(이상적인 부하율)

# VI. 해시 테이블로 데이터 조직

```ruby
def status_code_meaning(number):
	if number == 200:
		return "OK"
	elsif number == 301:
		return "Moved Permanently"
	elsif number == 401:
		return "Unauthorized"
	elsif number == 404:
		return "Not Found"
	elsif number == 500:
		return "Internal Server Error"
	end
end
```

```ruby
STATUS_CODES = {200 => "OK", 301 => "Moved Permanently", 401 => "Unauthorized", 404 => "Not Found", 500 => "Internal Server Error"}

def status_code_meaning(number)
	return STATUS_CODES[number]
end
```

# VII. 해시 테이블로 속도 올리기

- 배열 → 해시 테이블 : O(N) → O(1)

```jsx
function isSubset(array1, array2) {
	let largerArray;
	let smallerArray;

	// 어느 배열이 더 작은지 알아냄
	if(array1.length > array2.length) {
		largerArray = array1;
		smallerArray = array2;
	} else {
		largerArray = array2;
		smallerArray = array1;
	}

	// 작은 배열 순회
	for(let i = 0; i < smallerArray.length; i++) {
		// 작은 배열의 현재 값이 우선은 큰 배열에 없다고 임시로 가정
		let foundMatch = false;

		// 작은 배열의 각 값에 대해 큰 배열 순회
		for(let j = 0; j < largerArray.length; j++) {
			// 두 값이 같으면 작은 배열의 현재 값이 큰 배열에 존재
			if(smallerArray[i] === largerArray[j]) {
				foundMatch = true;
				break;
			}
		}

		// 작은 배열의 현재 값이 큰 배열에 없으면 false 반환
		if(foundMatch === false) {
			return false;
		}
	}

	// 루프 끝에 도달하면 작은 배열의 모든 값이 큰 배열에 존재
	return true;
}

// O(N * M)
```

```jsx
function isSubset(array1, array2) {
	let largerArray;
	let smallerArray;
	let hashTable = {};

	// 어느 배열이 더 작은지 알아냄
	if(array1.length > array2.length) {
		largerArray = array1;
		smallerArray = array2;
	} else {
		largerArray = array2;
		smallerArray = array1;
	}

	// largerArray의 모든 항목을 hashTable에 저장
	for(const value of largerArray) {
		hashTable[value] = true;
	}

	// smallerArray의 각 항목을 순회하며 hashTable에 없는 항목이면 false 반환
	for(const value of smallerArray) {
		if(!hashTable[value]) {
			return false;
		}
	}

	// false를 반환하지 않고 코드에서 여기까지 왔다면 smallerArray의 모든 항목이 largerArray에 존재
	return true;
}

// O(N)
```