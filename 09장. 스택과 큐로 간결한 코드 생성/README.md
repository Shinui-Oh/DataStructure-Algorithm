# 9장. 스택과 큐로 간결한 코드 생성

# I. 스택(Stack)

- 단순한 원소들의 리스트
- 데이터는 스택의 끝에만 삽입할 수 있음
- 데이터는 스택의 끝에서만 삭제할 수 있음
- 스택의 마지막 원소만 읽을 수 있음
- 위(Top) : 스택의 끝
- 밑(Bottom) : 스택의 시작
- 푸시 : 스택에 새 값을 삽입하는 것
- 팝 : 스택의 위에서 원소를 제거하는 것
- LIFO : Last In, First Out(스택에 푸시된 마지막 항목이 스택에서 팝될 첫 번째 항목)

# II. 추상 데이터 타입

```ruby
class Stack
	def initialize
		@data = []
	end

	def push(element)
		@data << element
	end

	def pop
		@data.pop
	end

	def read
		@data.last
	end
end
```

# III. 스택 다뤄보기

- 스택 기반 코드 린터
- 문법 오류 타입 1 : 여는 괄호는 있는데 대응하는 닫는 괄호가 없는 경우
- 문법 오류 타입 2 : 여는 괄호가 앞에 나오지 않았는데 닫는 괄호가 나오는 경우
- 문법 오류 타입 3 : 닫는 괄호가 바로 앞에 나온 여는 괄호와 종류가 다른 경우

# IV. 제약을 갖는 데이터 구조의 중요성

- 제약을 갖는 데이터 구조 사용 시 잠재적 버그를 막을 수 있음
- 스택 같은 데이터 구조는 문제를 해결하는 새로운 사고 모델을 제공함
- 스택과 LIFO 속성을 제대로 이해해서 작성한 코드는 다른 개발자에게 익숙하고 명쾌하게 읽힘

# V. 큐(Queue)

- 임시 데이터를 처리하기 위해 디자인된 데이터 구조
- 데이터는 큐의 끝에만 삽입할 수 있음
- 데이터는 큐의 앞에서만 삭제할 수 있음
- 큐의 앞에 있는 원소만 읽을 수 있음(스택과 정반대)
- 큐에 첫 번째로 추가된 항목이 가장 먼저 제거
- 앞(Front) : 큐의 시작
- 뒤(Back) : 큐의 끝
- 인큐(Enqueue) : 큐 삽입
- 디큐(Dequeue) : 큐에서 원소 삭제
- FIFO : First In, First Out

# VI. 큐 구현

```ruby
class Queue
	def initialize
		@data = []
	end

	def enqueue(element)
		@data << element
	end

	def dequeue
		# shift 메서드는 배열에서 첫 번째 원소를 제거해서 반환
		@data.shift
	end

	def read
		@data.first
	end
end
```

# VII. 큐 다뤄보기

- 프린터가 네트워크 상에 있는 컴퓨터로부터 출력 잡을 받아들일 수 있는 코드
- 프로그램은 요청받은 순서대로 문서 출력