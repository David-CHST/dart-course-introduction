void main() {

  int num1 = 2;
  double num2 = 3.0;
  bool isTrue = true;
  print((num1 + num2) is int);
  print((num1 + num2).runtimeType);
  dynamic myString = 'hello';
  if (myString == 'unhello') {
    print(isTrue);
    myString = 123;
  }

  // String Interpolation
  print('The type of $myString is a String? ${myString is String}');

  // Reassignable variables
  var username = 'fireship_user';
  username = 'fireship_dev';
  print(username);

  // final means the value can't be changed
  final String fullName = 'Jeffrey Stoner';
  print(fullName);
  // fullname = 'Jefferson' // error;

  const int age = 75;
  print(age);

  // const int favNumber = num1 + 5; // error because the value depends on a variable that is created at runtime

  // Sneak peek of next file/learning session: 
  // int? agist;
}