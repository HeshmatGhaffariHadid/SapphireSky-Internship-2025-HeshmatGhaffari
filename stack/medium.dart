import 'simple.dart';

class Medium {
  Stack stack = Stack();

  // Implement a function to reverse a string using a stack.
  String reverse(String input) {
    for (int i = 0; i < input.length; i++) {
      stack.push(input[i]);
    }
    return stack.printStack().join();
  }

  // How do you implement a stack with two queues?
  // Write a function to evaluate a postfix expression using a stack. --> [4, 3, +] = 7, [12, 4, -, 5, *] = 40
  int evaluatePostfix(String input) {
    List<String> expression = input.split(' ');
    String operator;
    int result, operand1, operand2;

    for (int i = 0; i < expression.length; i++) {
      // [4, 3, +]
      if (expression[i] != '+' &&
          expression[i] != '-' &&
          expression[i] != '*' &&
          expression[i] != '/') {
        stack.push(int.parse(expression[i]));
      } else {
        operator = expression[i];
        if (stack.getSize < 2) {
          print("Invalid Postfix Expression!");
          return -1;
        }
        operand2 = stack.pop();
        operand1 = stack.pop();
        result = calculate(operator, operand1, operand2);
        stack.push(result);
      }
    }
    if (stack.getSize != 1) {
      print("Invalid Postfix Expression!");
      return -1;
    }

    return stack.pop();
  }

//helper function
  int calculate(String operator, int operand1, int operand2) {
    switch (operator) {
      case '+':
        return operand1 + operand2;
      case '-':
        return operand1 - operand2;
      case '*':
        return operand1 * operand2;
      case '/':
        return operand1 ~/ operand2;
      default:
        return -1;
    }
  }

  // Implement a function to find the minimum element in a stack in constant time.
  int getMin(List<int> elements) {
    Stack<int> main = Stack<int>();
    Stack<int> min = Stack<int>();
    int repeat;
    for (int i = 0; i < elements.length; i++) {
      main.push(elements[i]);
      if (min.isEmpty) {
        min.push(elements[i]);
      } else {
        if (min.peek()! > elements[i]) {
          min.push(elements[i]);
        } else {
          repeat = min.peek()!;
          min.push(repeat);
        }
      }
    }
    return min.pop()!;
  }

  // Write a function to sort a stack using recursion.
   void sortStack(Stack stack) {
    if (stack.isEmpty) return;

    int top = stack.pop();
    sortStack(stack);

    Stack tempStack = Stack();
    while (!stack.isEmpty && stack.peek() > top) {
      tempStack.push(stack.pop());
    }
    stack.push(top);
    while (!tempStack.isEmpty) {
      stack.push(tempStack.pop());
    }
  }
}
