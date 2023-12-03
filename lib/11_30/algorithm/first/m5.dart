void main() {
  List<int> numberCards = [1, 2, 3, 4, 5];
  List<int> haveNumberCards = [1, 3, 2, 5];

  for (int number in numberCards) {
    if (!haveNumberCards.contains(number)) print(number);
  }
}
