void main() {
  printInt(10, 20);
  printInt(10, 10);
}

void printInt(int a, int b) {
  if (a > b || a < b) {
    print(a > b ? a.toString() : b.toString());
  } else if (a == b) {
    print('eq');
  }
}

//20
//eq