void main() {
  List<int> currentHurricane = [5, 8, 19, 25,31];

  for(int i = 0; i < currentHurricane.length - 1; i++) {
    int index = currentHurricane[i + 1] - currentHurricane[i];
    print(index);
  }
}

