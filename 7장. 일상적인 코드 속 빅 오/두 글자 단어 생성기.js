function wordBuilder(array) {
    let collection = [];

    for(let i = 0; i < array.length; i++) {
        for(let j = 0; j < array.length; j++) {
            if(i !== j) {
                collection.push(array[i] + array[j]);
            }
        }
    }

    return collection;
}