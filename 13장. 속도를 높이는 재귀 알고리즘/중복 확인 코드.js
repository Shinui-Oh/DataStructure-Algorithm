function hasDuplicateValue(array) {
    // 배열 정렬 -> 정렬 함수 사용
    array.sort((a, b) => (a < b) ? -1 : 1);

    // 배열의 각 값을 마지막 값까지 순회
    for(let i = 0; i < array.length; i++) {
        // 현재 값이 배열의 다음 값과 같으면 중복을 찾은 것
        if(array[i] == array[i + 1]) {
            return true;
        }
    }

    // true를 반환하지 않고 배열 끝까지 왔으면 중복이 없다는 것
    return false;
}

// O(NlogN)