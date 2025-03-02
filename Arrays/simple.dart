void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8121, 2222, 3123];
  print(findLargest(list));
}

//Write a function to find the largest element in an array.
int findLargest(List<int> list) {
  int result = 0;
  for (int i = 0; i < list.length; i++) {
    if (result < list[i]) result = list[i];
  }
  return result;
}
