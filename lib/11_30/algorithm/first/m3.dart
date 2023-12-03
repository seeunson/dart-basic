void main() {
  printContact('모두연', '010', '1234', '5678');
  printContact('손세은', '010', '6428', '0139');
}

void printContact(String name, String prefix, String middle, String last) {
  print('$name: $prefix-$middle-$last');
}

//모두연: 10-1234-5678
//선행하는 0이 있는 숫자를 정수로 선언하면(예: 010)
//프로그래밍 언어는 그것을 8진수(8진법 숫자)로 해석합니다.
