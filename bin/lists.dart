// A list inherits from ITERABLE

  // Three most common iterables
  // List, Map, Set
  // List is array, has indexes
  // <Generic type> defines the typing of the list
  // Defining the list with brackets is known as the Literal List
void main() {
  List<int> list = [1,2,3,4,5];
  print(list[2]);

  // For multiple items...

  list.sublist(2,5); // Returns items between those two indexes

  var list2 = List.filled(25,'hello'); // Fill a new list with as many items on a Static Value

  list2.length;
  list2.last;
  list2.first;

  list.add(4); // append
  list.removeLast(); // pop
  list.insert(1,1000);

  for (String n in list2) {
    print(n);
  }

  list.forEach((n) => print(n));

  var doubled = list.map((n) => n*2);
  print(doubled);

  List<int> combined = [...list, ...doubled];
  print(combined);
  combined.forEach(print);


  bool depressed = true;
  var cart = [
    'milk',
    'eggs',
    if (depressed) 'Vodka'
  ];
  print(cart);
} 