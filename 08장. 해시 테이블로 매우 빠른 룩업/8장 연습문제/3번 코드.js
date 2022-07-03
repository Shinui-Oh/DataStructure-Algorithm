function findMissingLetter(string) {
    // 문자열의 모든 문자를 해시 테이블에 저장
    let hashTable = {};

    for(let i = 0; i < string.length; i++) {
        hashTable[string[i]] = true;
    }

    // 처음 보는 문자 보고
    let alphabet = "abcdefghijklmnopqrstuvwxyz";

    for(let i = 0; i < alphabet.length; i++) {
        if(!hashTable[alphabet[i]]) {
            return alphabet[i];
        }
    }
}

// O(N)