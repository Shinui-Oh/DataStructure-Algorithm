function firstNonDuplicate(string) {
    let hashTable = {};

    for(let i = 0; i < string.length; i++) {
        if(hashTable[string[i]]) {
            hashTable[string[i]]++;
        } else {
            hashTable[string[i]] = 1;
        }
    }

    for(let i = 0; i < string.length; i++) {
        if(hashTable[string[i]] == 1) {
            return string[i];
        }
    }
}

// O(N)