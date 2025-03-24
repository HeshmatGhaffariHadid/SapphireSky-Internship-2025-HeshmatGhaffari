import 'dart:collection';
import 'dart:io';

// How do you design a stack that supports push(), pop(), and getMin() in constant time?
class Node<T> {
  T? data;
  Node<T>? next;
  Node(this.data, [this.next]);
}

class Stack<T> {
  Node<T>? _top;
  int size = 0;

  void push(T data) {
    Node<T> newNode = Node(data);
    newNode.next = _top;
    _top = newNode;
    size++;
  }

  T? pop() {
    if (isEmpty) {
      throw Exception('Stack is empty!');
    }
    T? data = _top!.data;
    _top = _top!.next;
    size--;
    return data;
  }

  T? peek() {
    if (_top == null) return null;
    return _top!.data;
  }

  bool get isEmpty => _top == null;

  int getMin(Stack stack) {
    Stack main = Stack();
    Stack min = Stack();
    int repeat;
    for (int i = 0; i < stack.size; i++) {
      main.push(stack.peek());
      if (min.isEmpty) {
        min.push(stack.peek());
      } else {
        if (min.peek()! > stack.peek()) {
          min.push(stack.peek());
        } else {
          repeat = min.peek()!;
          min.push(repeat);
        }
      }
    }
    return min.pop()!;
  }
  // Implement an LRU (Least Recently Used) cache using a stack.
  // I do not have any idea in this concept
}

// How do you implement a stack using only one queue?
class StackUsingQueue {
  Queue queue = Queue();

  void push(int value) {
    queue.add(value);
    for (int i = 0; i < queue.length - 1; i++) {
      int poped = queue.removeFirst();
      queue.add(poped);
    }
  } // [1,2,3,4,5] add -> 6 ==> [1,2,3,4,5,6] loop -> [6,1,2,3,4,5]

  int? pop() {
    if (queue.isEmpty) return null;
    return queue.removeFirst();
  }

  int top() {
    return queue.isEmpty ? null : queue.first;
  }

  bool get isEmpty => queue.isEmpty;
}

// Write a function to check if a given arithmetic expression is valid.
bool isValidExpression(String input) {
  List<String> expression = RegExp(r'(\d+|\D)') // Helped by AI
      .allMatches(input)
      .map((match) => match.group(0)!)
      .toList();
  Stack checkParen = Stack();
  Stack checkOrder = Stack();
  List<String> operators = ['+', '-', '*', '/', '.'];
  // check parentheses order
  for (String element in expression) {
    if (element == '(') {
      checkParen.push(element);
    } else if (element == ')') {
      if (!checkParen.isEmpty) {
        checkParen.pop();
      } else {
        return false;
      }
    }
  }
  if (!checkParen.isEmpty) return false;

  // check expression edges
  if (operators.contains(expression.first) ||
      operators.contains(expression.last)) {
    return false;
  }
  // check operators' order
  checkOrder.push(expression[0]);
  for (int i = 1; i < expression.length; i++) {
    if (operators.contains(expression[i]) &&
        operators.contains(checkOrder.peek())) {
      return false;
    }
    checkOrder.push(expression[i]);
  }
  return true;
}

// void main() {
//   print(isValidExpression('( 2.2 + 3 * ( 2 / 1 ) )')); // true
//   print(isValidExpression("(2+3)*5")); // true
//   print(isValidExpression("2 + * 3")); // false
//   print(isValidExpression("( 3 + 5 ) /")); // false
//   print(isValidExpression("3+5))"); // false
//   print(isValidExpression("3 + 5 * 2")); // true
//   print(isValidExpression("- 3 + 5")); // false
// }

// Implement a function to convert an infix expression to postfix notation.
String convertInfixToPostfix(String inFix) {
  // a+b*c+d
  Stack stack = Stack();
  String postFix = '';
  for (int i = 0; i < inFix.length; i++) {
    if (inFix[i] != '+' &&
        inFix[i] != '-' &&
        inFix[i] != '*' &&
        inFix[i] != '/' &&
        inFix[i] != '(' &&
        inFix[i] != ')') {
      postFix += inFix[i];
    } else {
      if (inFix[i] == ')') {
        postFix += stack.pop();
        stack.pop();
      } else if (stack.isEmpty ||
          inFix[i] == '(' ||
          (stack.peek() != '*' && stack.peek() != '/')) {
        stack.push(inFix[i]);
      } else {
        while (!stack.isEmpty) {
          postFix += stack.pop();
        }
        stack.push(inFix[i]);
      }
    }
  }
  while (!stack.isEmpty) {
    postFix += stack.pop();
  }
  stdout.write('Postfix notation of your input is: ');
  return postFix;
}
void main() {
  print(convertInfixToPostfix('a + b * c - d / e'));
}
