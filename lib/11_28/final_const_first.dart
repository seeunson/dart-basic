//final 변수는 런타임에 값이 할당된다
//const 변수는 컴파일 타임에 값이 할당된다
import 'dart:math';

void main() {
  // final 변수
  final int finalValue = Random().nextInt(100);
  print('finalValue: $finalValue');
  // const 변수
  const int constValue = 5;
  print('constValue: $constValue');

  // final 변수 재할당 (오류)
  // finalValue = 10;

  // const 변수 재할당 (오류)
  // constValue = 10;

  // final 변수 변경
  final int finalNewValue = finalValue + 10;
  print('finalNewValue: $finalNewValue');

  // const 변수 변경 (오류)
  // const int constNewValue = constValue + 10;
}
