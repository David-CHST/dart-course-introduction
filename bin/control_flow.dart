// Fundamentals

void main(){

  String color = 'blue';
  if (color == 'blue') {
    // Do something


  } else if (color == 'green') {
    // Do other thing

  } else {
    // default
  } 

  if (color == 'blue') print('Hello blue!');

  String thing1 = '';

  if (thing1.isEmpty) print('Hello PalWorld?');

  String? thing2;
  print(thing2);

  for (var i = 0; i < 5; i++) {
    
    print(i);
    // break; // supported!

    // continue; // Skips current loop and goes to next
  }

  int i = 0;
  while (i < 5) { // Does something while the condition is true at the start
    print(i);
    i++;
  }

  i = 0;
  do {
    print(i);
  } while (i < 5); // Does something while the condition is true at the end

  // Assert

  var txt = 'good';
  assert(txt != 'bad'); // for debugging // Inactive in production
}