// Maps are like hashmaps or dicts in other languages...

void main() {
  // Two generic types, takes first for Key then for Value
  // Book is the name of the map
  Map<String, dynamic> book = {

    'What' : 12,
    'Hey!' : 'Wuddup?'

  };

  // Accesing values is the same as python
  print(book['What']);
  book['What'] = 'nope!';

  book.keys;
  book.values; // Returns an iterable, but can be converted to list
  book.values.toList(); 

  // Looping over keys and values

  for (MapEntry b in book.entries) {
    print('Key ${b.key}, Value ${b.value}');
  }


  // Easier to do with a forEach callback
  book.forEach((k, v) => print('Key : $k, Value : $v'));

}