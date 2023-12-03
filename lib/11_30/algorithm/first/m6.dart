void main() {
  printResult(777); // 모든 자리수가 같은 경우
  printResult(123); // 모든 자리수가 같지 않은 경우
}

void printResult(int number) {
  String numberStr = number.toString();
  bool allDigitsSame =
      numberStr.split('').every((digit) => digit == numberStr[0]);

  if (allDigitsSame) {
    print('$number');
  } else {
    print('No');
  }
}

//split('') 메서드는 이 문자열을 각각의 문자로 분리하여 리스트로 만듭니다.
//예를 들어, '777'은 ['7', '7', '7']로 변환됩니다.
//every 메서드는 리스트의 모든 요소가 주어진 조건을 만족하는지 확인합니다.
//여기서 digit는 split으로 생성된 리스트의 각 요소 (즉, 각 자릿수)를 나타냅니다.
//digit == numberStr[0]는 현재 자릿수(digit)가 문자열의 첫 번째 문자(numberStr[0])와 같은지를 비교합니다.
