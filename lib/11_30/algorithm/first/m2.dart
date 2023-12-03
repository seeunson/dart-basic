void main() {
  printInt(30, 15);
  printInt(12, 40);
}

void printInt(int a, int b) {
  
  int c = a + b;
  
  // 홀 + 홀 , 짝 + 짝 = 짝
  // 홀 + 짝 = 홀
  if (c % 2 ==  1) {
    print('YES');
  } else if (c % 2 ==  0){
    print('No');
  }
}








//YES
//NO