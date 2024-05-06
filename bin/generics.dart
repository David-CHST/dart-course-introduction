// Defining types inside lists are used with generic types
// A generic is a way to pase a type as a parameter inside angle brackets < >
// Generics are not something you regularly implement, but you use them always when creating objects 

void main() {

  List<int> numbers = [1,2,3];
  Box<String> box1 = Box('cool');
  Box<double> box2 = Box(2.0);
  Box<List<int>> box3 = Box(numbers);
  Box<List<Box<dynamic>>> boxesBox = Box([box1,box2,box3]);
  boxesBox.openBox();
}

class Box<T> {
  
  // This means that T is the type and it will define the type of this value
  late T value;

  // This value will be stored inside the box with a constructor
  Box(this.value);

  void printBoxContents(List<Box> val) {
    for (Box box in val) {
      box.openBox();
    }

  }
  // The box has a method with a return value of T, so it changes depending on what kind of Box you make.
  T openBox() {
    if (T == List<Box<dynamic>>) {
      printBoxContents(value as List<Box<dynamic>>);
    } else {
      print(value);
    }
    return value;
  }
}