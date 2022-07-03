function findMissingNumber(array) {
    array.sort((a, b) => (a < b) ? -1 : 1);

    for(let i = 0; i < array.length; i++) {
        if(array[i] !== i) {
            return i;
        }
    }

    return null;
}

// O(NlogN + N) -> O(N)