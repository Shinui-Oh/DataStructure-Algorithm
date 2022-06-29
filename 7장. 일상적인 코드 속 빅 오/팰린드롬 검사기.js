function isPalindrome(string) {
    // leftIndex를 인덱스 0에서 시작
    let leftIndex = 0;
    // rightIndex를 배열의 마지막 인덱스에서 시작
    let rightIndex = string.length - 1;

    // leftIndex가 배열 중간에 도달할 때까지 순회
    while(leftIndex < string.length / 2) {
        // 왼쪽 문자와 오른쪽 문자 불일치 -> 팰린드롬 아님
        if(string[leftIndex] !== string[rightIndex]) {
            return false;
        }

        // leftIndex를 오른쪽으로 한 칸 옮김
        leftIndex++;
        // rightIndex를 왼쪽으로 한 칸 옮김
        rightIndex--;
    }

    // 불일치하는 문자 없이 전체 루프 통과 시 팰린드롬
    return true;
}