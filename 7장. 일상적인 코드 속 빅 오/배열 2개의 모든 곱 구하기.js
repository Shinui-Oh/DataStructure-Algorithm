function twoNumberProducts(array1, array2) {
    let products = [];

    for(let i = 0; i < array1.length; i++) {
        // 안쪽 배열, j는 항상 i의 오른쪽 인덱스에서 시작
        for(let j = 0; j < array2.length; j++) {
            products.push(array1[i] * array2[j]);
        }
    }

    return products;
}