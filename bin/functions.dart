// Functions are first-class objects, which means they can be assigned to variable and passed as arguments

void main() {
  
  // Func definition
  takeFive(){

  }


  // To call and execute use this line
  takeFive();
  // has no return value, so defaults to null. 

  // Strongly Typed function
  String takeThree(int number){ // All arguments have type definition and name
    // Returns String
    return 'Hi there';
    // You can remove the String type from the definition because it will assume it returns a string...
  }
  takeThree(23);

  // It is more common to use named parameters to make code more readable

  namedParams({ required int a, required int b}) { // you make required name parameters by adding braces and the "required" keyword {
    return a - b;
  }

  print(namedParams(a: 25, b: 10));

  // Arrow Functions (yay!)
  takeTen(int number) => '$number minus ten equals ${number - 10}'; // Implicitly tells the code to return the code after the arrow
  // Very useful when passing functions as arguments
  print(takeTen(23));

  // CHALLENGE
  // Define a func that takes a func as an argument and calls it inside it's body.

  callFunc(Function callback) {
    for (var i = 0; i < 10; i++) {
      if (callback(i)) {
        print(i);
      }
    }
  }

  callFunc((int x){
    return x >= 5 ? true : false;
    });
}