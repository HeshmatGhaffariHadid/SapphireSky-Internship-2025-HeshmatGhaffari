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

  int get getSize => size;

  List<T> printStack() {
    List<T> stack = [];
    Node<T>? current = _top;
    while (current != null) {
      stack.add(current.data!);
      current = current.next;
    }
    return stack;
  }
}
