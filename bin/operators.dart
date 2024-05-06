// Operators


void main(){
  // Basic Math

  1 + 2 - 3 * 4 / 5;

  // Logic

  1 == 1;
  1 < 2;
  (1 >= 1) || ('a' == 'b'); // Logical or
  (1 >= 1) && ('a' == 'b'); // Logical and

  var x = 1;
  x++;
  x--;
  print(x);
   
  String? name;
  if (x != 123123) {
    name ??= 'Guest'; // Assign value if null, otherwise use current value
  }
  var z = name ?? 'Guest'; // Assigns a default if name is not null
  print(z);

  // Ternary // Concise way of writing if/else statement

  String color = 'blue';
  var isThisBlue = color == 'blue' ? 'Yep, blue it is' : 'Nope, it aint blue';
  print(isThisBlue);

  // Cascade ??? the fuck is this

  dynamic paintObject; // Ok this is a dynamically typed variable

  // This example does NOT use cascade
  var paint = paintObject();
  paint.color = 'black';
  paint.strokeCap = 'round';
  paint.strokeWidth = 5.0;


  // This is the oneliner version using cascade!
  var paintNew = paintObject() ..color = 'black' ..strokeCap = 'round' ..strokeWidth = 5.0;
  print(paintNew);

  // Typecast

  var number = 23 as String;
  print(number);
  // print(number is String); // true!
   

}