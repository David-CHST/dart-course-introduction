// Dart provides support for async programming out of the box
// First import the data structures for async programming
import 'dart:async';
// Specifically we need Futures & Streams

void main() {
  // A future allows performing actions in the background, this is to avoid the event loop from getting delayed.

  var delay = Future.delayed(Duration(seconds: 3));

  // In this way we can execute code according to the result of the future
  delay
    .then((value) => print('I have been waiting'))
    .catchError((err)=>print('$err huh?'));

  print('Hey there!');
}

// You can add the async keyword to tell dart to automatically return a Future
runInTheFuture() async {
  // Here you can use await to pause the execution of the function until the promise/future is resolved
  var data = await Future.value('world');

  // When it is resolved it will return this string
  return 'hello $data.';
}