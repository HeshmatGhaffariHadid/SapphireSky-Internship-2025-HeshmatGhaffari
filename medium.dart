import 'stack/simple.dart';

class Medium {
  Stack stack = Stack();

  // Implement a function to reverse a string using a stack.
  String reverse(String input) {
    for (int i = 0; i < input.length; i++) {
      stack.push(input[i]);
    }
    return stack.printStack().join();
  }
}

void main() {
  Medium medium = Medium();
  print(medium.reverse('hello'));
}
