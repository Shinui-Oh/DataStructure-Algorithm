function max(array) {
    let greatestNumberSoFar = array[0];

    for(let i = 0; i < array.length; i++) {
        if(array[i] > greatestNumberSoFar) {
            greatestNumberSoFar = array[i];
        }
    }

    return greatestNumberSoFar;
}