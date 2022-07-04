function twoSum(array) {
    for(let i = 0; i < array.length; i++) {
        for(let j = 0; j < array.length; j++) {
            if(i !== j && array[i] + array[j] === 0) {
                return true;
            }
        }
    }

    return false;
}

// O(N^2)