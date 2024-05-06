// Anonymous function that takes a function as an argument, but instead of naming it, just use a () => 'code' 
void show(fn) {
  for (var i = 0; i < 10; i++) {
    if (fn(i)){
      print(i);
    }
  }
}

// Runs show with a function, which recieves a function and loops through the function.
void main() {
  show((int x) {
    return x % 2 == 0;
  });

  show((int x) {
    return x % 3 != 0;
  });
}