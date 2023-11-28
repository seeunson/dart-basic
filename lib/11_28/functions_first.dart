void main() {
// 리턴 및 인수 타입이 지정된 함수
  int add(int a, int b) {
    return a + b;
  }

// 화살표 함수
  int multiply(int a, int b) => a * b;

//forEach() 메서드를 사용한 함수 인수와 익명 함수
  var numbers = [1, 2, 3, 4, 5];
  numbers.where((number) => number.isEven).forEach(print);
  //where: 특정 조건에 맞는 요소들만 모아서 새로운 리스트를 만드는 메서드
  //isEven: 숫자가 짝수인지 확인하는 메서드
  //forEach(print): 필터링된 각각의 요소에 함수 실행, 프린트
}
