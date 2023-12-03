void main() {
  int firstTerm = 5; 
  int commonDifference = 10; 
  int numberOfTerms = 10;

  for (int i = 0; i < numberOfTerms; i++) {
    int count = i * commonDifference;
    int term = firstTerm + count;

    print(term);
  }
}
