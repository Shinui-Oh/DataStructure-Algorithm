function max(array) {
    array.sort((a, b) => (a < b) ? -1 : 1);

    return array[array.length - 1];
}