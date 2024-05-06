void main() {


  // int age = null // error
  // we use nulls for variables that need to wait for an API async // reduces runtime errors
  int? age;
  print(age);

  //print(age == null);

  // Assertion operator ! Make the comp think it is non-null

  String? answer;
  
  String result = answer!; // increases risk of runtime error
  print(result);

}


// Late initialization
class Animal {
  late final String _size;

  void goBig() {
    _size = 'big';
    print(_size);
  }
}
