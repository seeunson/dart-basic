void main() {
  // 플레이어 목록 초기화
  List<String> players = [
    'Player 1',
    'Player 2',
    'Player 3',
    'Player 4'
  ]; // 'Player 3, Player 4'를 분리하여 수정
  int currentPlayerIndex = 0; // 현재 플레이어 인덱스
  int clapCount = 0; // 'Clap' 카운트
  int roolCount = 0; // 'Rool' 카운트
  int ahhCount = 0; // 'Ahh' 카운트
  int maxClapCount = 0; // 가장 많은 'Clap' 카운트
  String playerWithMaxClap = ""; // 가장 많은 'Clap'을 한 플레이어
  List<int> clapCountsByPlayer = [0, 0, 0, 0]; // 플레이어별 'Clap' 카운트

  // 1부터 100까지 순회
  for (int i = 1; i <= 100; i++) {
    String currentPlayerName = players[currentPlayerIndex];
    if (i % 30 == 0) {
      print('$currentPlayerName: ahh'); // 30의 배수일 때 'ahh' 출력
      ahhCount++;
    } else if (i % 3 == 0) {
      print('$currentPlayerName: Clap'); // 3의 배수일 때 'Clap' 출력
      clapCount++;
      clapCountsByPlayer[currentPlayerIndex]++; // 현재 플레이어의 'Clap' 카운트 증가
    } else if (i % 10 == 0) {
      print('$currentPlayerName: rool'); // 10의 배수일 때 'rool' 출력
      roolCount++;
    } else {
      print('$currentPlayerName: $i'); // 그 외 숫자 출력
    }
    currentPlayerIndex =
        (currentPlayerIndex + 1) % players.length; // 다음 플레이어로 이동
  }

  // 각 카운트 출력
  print('\nclapCount: $clapCount');
  print('roolCount: $roolCount');
  print('ahhCount: $ahhCount');

  // 가장 많은 'Clap'을 한 플레이어 찾기
  for (int i = 0; i < players.length; i++) {
    if (clapCountsByPlayer[i] > maxClapCount) {
      maxClapCount = clapCountsByPlayer[i];
      playerWithMaxClap = players[i];
    }
  }

  // 가장 많은 'Clap'을 한 플레이어와 그 카운트 출력
  print('\nplayerWithMaxClap: $playerWithMaxClap');
  print('maxClapCount: $maxClapCount');
}
