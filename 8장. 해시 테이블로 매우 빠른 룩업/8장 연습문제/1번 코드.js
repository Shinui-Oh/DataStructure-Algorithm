function getIntersection(array1, array2) {
    let intersection = [];
    let hashTable = {};

    for(let i = 0; i < array1.length; i++) {
        hashTable[array1[i]] = true;
    }

    for(let j = 0; j < array2.length; j++) {
        if(hashTable[array2[j]]) {
            intersection.push(array2[j]);
        }
    }

    return intersection;
}

// O(N)