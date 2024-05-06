// Same as imports from python
import 'constructors.dart' as my_shapes; // Using a namespace to not collide
// You can also omit the class that causes the collision!
// import 'constructors.dart' hide Circle; // Using hide to avoid collisions here // Inverse of hide is show //

class Circle {}

void main() {
  my_shapes.Circle(radius: 23);
}