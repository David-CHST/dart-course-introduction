// EXTENDING AND INHERITANCE LETS GOO
// Useful for stateless and statefull widgets, extending the base classes of flutter to make your own widgets...

void main() {
  var myPug = Pug();
  final truck = RottWeiler();
  final List<Dog> dogList = [myPug, truck];
  dogList.forEach((element) {element.walk();});
}

//Sure I guess... walk the dog
abstract class Dog { 
  void walk() {
    print('walking...');
  }
}

// This extends the basic dog, it can walk without us having to teach it.
class Pug extends Dog {
  String breed = 'pug';

  // But we want to make it walk with STYLE.
  @override // So we change the walk
  void walk() {
    print('she do be walkang... slay queen! 🥰');
  }
}

class RottWeiler extends Dog {
  String breed = 'rottweiler';
  @override
  void walk() {
    super.walk();
    print('Boutta bite up the block if you keep that shid up! 🔪');
  }
}
