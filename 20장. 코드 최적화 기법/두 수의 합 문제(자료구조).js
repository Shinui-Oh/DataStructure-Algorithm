function twoSum(array) {
    let hashTable = {};

    for(let i = 0; i < array.length; i++) {
        // 현재 숫자와 더했을 때 합해서 10이 되는 숫자가 해시 테이블에 키로 있는지 확인
        if(hashTable[10 - array[i]]) {
            return true;
        }

        // 각 숫자를 해시 테이블에 키로 저장
        hashTable[array[i]] = true;
    }

    // 어떤 숫자의 보수도 찾지 못한 채 배열 끝에 도달했으면 false 반환
    return false;
}