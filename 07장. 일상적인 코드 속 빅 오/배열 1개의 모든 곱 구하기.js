function twoNumberProducts(array) {
    let products = [];

    // 바깥 배열
    for(let i = 0; i < array.length - 1; i++) {
        // 안쪽 배열, j는 항상 i의 오른쪽 인덱스에서 시작
        for(let j = i + 1; j < array.length; j++) {
            products.push(array[i] * array[j]);
        }
    }

    return products;
}