// These are interfaces, you implicitly make them when you create a class
// AKA what other devs will see with the intelliSense when working on the project

void main() {
  var e = Elephant(name: 'Bob');

  // works everywhere
  e.sayHi();

  // Only works in this file
  e._saySecret();
}

class Elephant {
  
  // Public interface
  final String? name;

  // Private, only visible in this library.
  final int _id = 23;

  // Constructor... not in the interface.
  Elephant({this.name});


  // Public method.
  sayHi() => 'My name is $name.';

  // Private method.
  _saySecret() => 'My ID is $_id.';
}