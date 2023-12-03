import 'dart:math';

class Cleric {
  String? name;
  int hp = 50;
  final int maxHp = 50;
  int mp = 6;
  final int maxMp = 10;

  void selfAid() {
    mp = mp - 5;
    hp = maxHp;
    print('$name님이 SelfAid를 사용했습니다.');
    print('HP가 $maxHp로 회복되었습니다.');
  }

  int pray(int sec) {
    int min = 0;
    int max = 2;
    int plusmp = Random().nextInt(max - min + 1) + sec;
    if (mp < maxMp) {
      mp = mp + plusmp;
      if (mp + plusmp > 10) mp = maxMp;
    } else {
      mp = maxMp;
    }
    return mp;
  }
}
//
