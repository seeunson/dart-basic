import 'dart:math';

// final int maxHp = 50;
// final int maxMp = 10;

class Cleric {
  static final int maxHp = 50;
  static final int maxMp = 10;

  String? name;
  int hp;
  int mp;

//이 클래스는 Cleric(“아서스", hp: 40, mp: 5) 와 같이, 이름, HP, MP 를 지정하여 인스턴스화 할 수 있다
//이 클래스는 Cleric(“아서스", hp: 35) 와 같이, 이름과 HP만으로 지정하여 인스턴스화 할 수 있다. 이 때, MP는 최대 MP와 같은 값이 초기화 된다
//이 클래스는 Cleric(“아서스") 와 같이 이름만을 지정하여 인스턴스화 할 수 있다. 이 때, HP 와 MP 는 최대 HP와 최대 MP로 초기화 된다
//이 클래스는 Cleric() 과 같이 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없다고 한다. (이름이 없는 성직자는 존재 할 수 없음)
//생성자는 가능한 한 중복되는 코드가 없도록 작성한다.

  Cleric(this.name, {this.hp = 50, this.mp = 10});

  void selfAid() {
    mp = mp - 5;
    hp = maxHp;
    print('$name님이 SelfAid를 사용했습니다.');
    print('HP가 $maxHp로 회복되었습니다.');
  }

  int pray(int sec) {
    int plusmp = Random().nextInt(3) + sec;
    if (mp < maxMp) {
      mp = mp + plusmp;
      if (mp + plusmp > 10) mp = maxMp;
    } else {
      mp = maxMp;
    }
    return mp;
  }
}

void main() {
  var cleric1 = Cleric('아서스', hp: 40, mp: 5);
  var cleric2 = Cleric('아서스', hp: 30);
  var cleric3 = Cleric('아서스');
  //var cleric = Cleric();, 이름이 없는 성직자는 존재할 수 없음
  print(Cleric.maxHp); //각 인스턴스 별이 아닌 클래스 별로 존재하는 정적 멤버
}
