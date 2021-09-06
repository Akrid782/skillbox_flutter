abstract class Hero {
  void say();
}

mixin Fly {
  int get speed;
  void canFly() {
    print('Я могу летать со скоростью ${this.speed} км/ч');
  }
}

mixin Jump {
  void canJump() {
    print('Я могу прыгать');
  }
}

class SuperMan extends Hero with Fly, Jump {
  final int speed;

  SuperMan(this.speed);

  @override
  void say() {
    canFly();
    canJump();
  }
}

void main() {
  SuperMan superMan = SuperMan(500);
  superMan.say();
}
