// After futures, there are Streams
// These allow many async events, handling them from the same place

import 'dart:async';

void main() {
  // streams can only be listened to once, running the code below would give an error
  // To fix this we used the .asBroadcastStream() method
  var stream = Stream.fromIterable([1,2,3]).asBroadcastStream(); 

  // we can listen to a stream using its listen method, it takes a callback to execute for every event

  stream.listen((event) => print(event));

  stream
    .map((event) => event * 2)
    .listen((event) => print(event));

}

// You can even use async on streams!
// treat it as a for loop for each async event
streamFun() async {
  var stream = Stream.fromIterable([4,5,6]);

  await for (int value in stream) {
    print('This is $value!');
  }
}