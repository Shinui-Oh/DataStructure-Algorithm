function findDuplicate(array) {
    let hashTable = {};

    for(let i = 0; i < array.length; i++) {
        if(hashTable[array[i]]) {
            return array[i];
        } else {
            hashTable[array[i]] = true;
        }
    }
}

// O(N)