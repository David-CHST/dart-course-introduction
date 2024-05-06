// Class constructors are fairly complicated...
void main() {
  
  var rect = Rectangle(25, 30);
  rect.area;

  // This one is more readable than the last one, so it is better.
  const circleSample = Circle(radius: 50, name: 'foo');
  const circleCounterSample = Circle(radius: 10);
  print(circleSample.name);
  print(circleCounterSample.name);

  // We want to create two identical point objects in two different ways.
  var p1 = Point.fromMap({ 'lat': 23.0, 'lng': 50.0});
  var p2 = Point.fromList([230.5,55.15]);
  print(p1.posSize);
  print(p2.posSize);
}


// A constructor allows you to pass data INTO a class when it is created

class Rectangle {

  final int width;
  final int height;
  late final int area; // This has to be late because area is constructed afterwards...
  String? name; // This nullable value is used to make the optional parameter in brackets in the constructor

  // A constructor that usually had parameters for the class variables, can be re-used as a constructor method
  Rectangle(this.width, this.height, [this.name]) {
    area = width * height; 
    // In this constructor you can use "this." to reference an instance variable in case it has a collision with another global
  }
  
}

class Circle {
  // You can add named parameters using braces inside the parenthesis.
  // By default parameters are optional. Use "Required" to make them so.
  // If it is truly optional and nullable, add a "?" to the type
  final String? name;
  const Circle({ required int radius, this.name });
  // We can use const for the constructor, because this allows you to instantiate objects in this manner.
}

// Named constructors
// You might want multiple ways to construct an object!

class Point {
  double i = 0.1;
  double lat = 0;
  double lng = 0;
  late double posSize;
  
  // Named constructor
  Point.fromMap(Map data) {
    lat = data['lat'];
    lng = data['lng'];
    posSize = lat*lng;
    do {
      i *= 10.0;
    } while (posSize - i > 0.0);
    print(posSize);
    posSize = i;
  }

  Point.fromList(List data) {
    lat = data[0];
    lng = data[1];
    posSize = lat*lng;
    do {
      i *= 10.0;
    } while (posSize - i > 0.0);
    print(posSize);
    posSize = i;
  }

  
}