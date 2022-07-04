function reverse(array) {
    for(let i = 0; i < array.length / 2; i++) {
        // 배열 내 값을 교환하는 새 자바스크립트 방식
        [array[i], array[(array.length - 1) - i]] = [array[(array.length - 1) - i], array[i]];

        // 다음과 같이 기존 방식도 교환 가능
        // let temp = array[i];
        // array[i] = array[(array.length - 1) - i];
        // array[(array.length - 1) - i] = temp;
    }

    return array;
}