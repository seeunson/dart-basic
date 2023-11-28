void main() {
  List<String> players = ['Player 1', 'Player 2', 'Player 3, Player 4'];
  int currentPlayerIndex = 0;
  int clapCount = 0;
  int roolCount = 0;
  int ahhCount = 0;
  int maxClapCount = 0;
  String playerWithMaxClap = "";
  List<int> clapCountsByPlayer = [0, 0, 0, 0];

  for (int i = 1; i <= 100; i++) {
    String currentPlayerName = players[currentPlayerIndex];
    if (i % 30 == 0) {
      print('$currentPlayerName: ahh');
      ahhCount++;
    } else if (i % 3 == 0) {
      print('$currentPlayerName: Clap');
      clapCount++;
      clapCountsByPlayer[currentPlayerIndex]++;
    } else if (i % 10 == 0) {
      print('$currentPlayerName: rool');
      roolCount++;
    } else {
      print('$currentPlayerName: $i');
    }
    currentPlayerIndex = (currentPlayerIndex + 1) % players.length;
  }

  print('\nclapCount: $clapCount');
  print('roolCount: $roolCount');
  print('ahhCount: $ahhCount');

  for (int i = 0; i < players.length; i++) {
    if (clapCountsByPlayer[i] > maxClapCount) {
      maxClapCount = clapCountsByPlayer[i];
      playerWithMaxClap = players[i];
    }
  }

  print('\nplayerWithMaxClap: $playerWithMaxClap');
  print('maxClapCount: $maxClapCount');
}
