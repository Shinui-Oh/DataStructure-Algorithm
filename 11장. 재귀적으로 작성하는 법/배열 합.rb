def sum(array)
	# 기저 조건 : 배열에 원소가 하나만 남았을 때
	return array[0] if array.length == 1

	return array[0] + sum(array[1, array.length - 1])
end