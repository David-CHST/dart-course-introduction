// Sometimes extending is not enough, and you want to add even MORE extensions
// for this you make a series of mixins instead of classes

void main() {
  var supaMan = SuperHuman();
  supaMan.sayHello();
  supaMan.sprint();
  supaMan.benchPress();
  supaMan.flyHigh();
}

mixin Strong {
  bool doesLift = true;

  void benchPress() {
    print('OOHHHH YEAHH! 🏋🏼‍♀️');
  }
}

mixin Fast {
  bool doesRun = true;

  void sprint() {
    print('zoooooooooooom! 🏃🏼‍♂️');
  }
}

class Human {
  void sayHello() {
    print('Hello 🕴🏼');
  }
}


class SuperHuman extends Human with Strong, Fast {
  void flyHigh() {
    print('vvvwwwwoooooooom ✈');
  }
}