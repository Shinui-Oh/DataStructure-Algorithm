function greatestProductOf3(array) {
    array.sort((a, b) => (a < b) ? -1 : 1);

    return array[array.length - 1] * array[array.length - 2] * array[array.length - 3];
}