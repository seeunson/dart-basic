// 이 Dart 코드는 함수 선언과 함수 사용 예시를 포함하고 있습니다.

void main() {
  //함수 호출
  printMessage('Hello, Dart!');
  //함수 호출: 반환값 사용
  addNumbers(1, 2);
  //함수 호출: 선택적 매개변수 사용
  showInfo('John', age: 27);
  //함수 호출: 기본 매개변수 사용
  printInfo2('John', 27);
}

//함수 선언: 반환값이 없는 함수
void printMessage(String message) {
  print('${message}');
}

//함수 선언: 인자 2개를 받아 더한 결과를 반환하는 함수
int addNumbers(int a, int b) {
  return a + b;
}

//함수 선언: 선택적 매개변수를 사용하는 함수
void showInfo(String name, {int? age}) {
  print('name: $name');
  if (age != null) {
    print('age: $age');
  }
}

//함수 선언: 기본 매개변수를 사용하는 함수
//위치 기반 매개변수를 사용하는 함수
void printInfo2(String name, int age) {
  print('name: $name');
  print('age: $age');
}
