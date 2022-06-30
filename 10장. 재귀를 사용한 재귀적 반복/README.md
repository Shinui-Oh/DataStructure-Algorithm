# 10장. 재귀를 사용한 재귀적 반복

# I. 루프 대신 재귀

```jsx
function countdown(number) {
	for(let i = number; i >= 0; i--) {
		console.log(i);
	}
}

countdown(10);
```

```jsx
function countdown(number) {
    console.log(number);
	countdown(number - 1);
}

countdown(10);
```

- 루프를 사용할 수 있는 경우 → 거의 대부분 재귀로 변경 가능

# II. 기저 조건(Base case)

```jsx
function countdown(number) {
	console.log(number);

	if(number === 0) {
		return;
	} else {
		countdown(number - 1);
	}
}

countdown(10);
```

- 재귀에 쓰이는 용어
- 함수가 반복되지 않는 경우 → 재귀 함수가 무한대로 호출되지 않게 하는 기저 조건 필요

# III. 재귀 코드 읽기

```ruby
def factorial(number)
	if number == 1
		return 1
	else
		return number * factorial(number - 1)
	end
end
```

- number == 1이 기저 조건

# IV. 컴퓨터의 눈으로 바라본 재귀

## 1. 호출 스택(Call Stack)

- 컴퓨터는 스택을 사용해 어떤 함수를 호출 중인지 기록
- 가장 위 원소는 가장 최근에 호출된 함수, 즉 컴퓨터가 다음으로 마무리해야 할 함수
- 호출 스택을 통해 값 위로 전달하기(Passing a value up through the call stack)

## 2. 스택 오버플로

- 단기 메모리에 더 이상 데이터를 저장할 공간이 없을 때까지 호출 스택 늘어남
- 재귀 강제 종료, 메모리 초과로 인한 함수 호출 거부

# V. 파일시스템 순회

## 1. 주어진 디렉터리의 모든 하위 디렉터리명을 출력

- 주어진 디렉터리 내에 각 파일 순회
- 현재 디렉터리의 바로 다음에 있는 하위 디렉터리명만 출력

## 2. 한 단계 더 깊이 탐색

- 두 단계 아래까지만 찾음
- 다음 단계의 디렉터리를 찾기 위해서 중첩 루프 반복 필요

## 3. 재귀로 코드 짜기

- 모든 하위 디렉터리를 찾을 때까지 깊이 들어감