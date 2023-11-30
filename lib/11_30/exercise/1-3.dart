class Cleric {
  String? name;
  int hp = 50;
  final int maxHp = 50;
  int mp = 10;
  final int maxMp = 10;

  void selfAid() {
    mp = mp - 5;
    hp = maxHp;
    print('$name님이 SelfAid를 사용했습니다.');
    print('HP가 $maxHp로 회복되었습니다.');
  }
}
