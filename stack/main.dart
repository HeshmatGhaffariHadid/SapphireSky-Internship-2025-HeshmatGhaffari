import 'medium.dart';
import 'simple.dart';

void main() {
  Medium medium = Medium();
  Stack stack = Stack();
  stack.push(9);
  stack.push(13);
  stack.push(1);  
  stack.push(-3);
  print('Unsorted stack: ${stack.printStack()}');
  medium.sortStack(stack);
 print('Sorted stack: ${stack.printStack()}');
}
