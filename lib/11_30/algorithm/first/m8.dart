void main() {
  throwParty(11111111111);
  throwParty(11111);
}

void throwParty(int a) {
  String strNumber = a.toString();

  if (strNumber.length >= 11) {
    print('OK');
  } else {
    int b = 11 - strNumber.length;
    print(b);
  }
}
