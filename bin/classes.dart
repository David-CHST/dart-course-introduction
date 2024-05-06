// Every object in dart is an instance of a class
// Class provides way to define custom objects by combining data types
// Classes shuld always be in TitleCase

void main() {
  // This is how you instantiate a new object
  Basic thing = Basic('Hi!');

  // In order to make them useful you can add instance members.
  // AKA Data or functionality that is tied to each object
  print(thing.id);
  thing.doStuff();


  // You can call static variables and methods on the class without creating a new object
  // Static variable
  print(Basic.globalData);
  // Static method
  Basic.helper();
}

class Basic {
  int id = 5;
  String salute;

  // In order to pass arguments to a class, you need a constructor
  Basic(this.salute);
  // More on them in the constructor file

  // Functions automatically have access to instance variables from this class. 
  doStuff() {
    print('$salute My ID is $id.');
  }

  static String globalData = 'This is global data!';
  static helper() {
    print('You called a helper!');
  }

  // Finally, static methods can be on a class.


}

