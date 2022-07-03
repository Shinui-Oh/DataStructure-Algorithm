function max(array) {
    for(let i = 0; i < array.length; i++) {
        iIsGreatestNumber = true;

        for(let j = 0; j < array.length; j++) {
            if(array[j] > array[i]) {
                iIsGreatestNumber = false;
            }
        }

        if(iIsGreatestNumber) {
            return array[i];
        }
    }
}