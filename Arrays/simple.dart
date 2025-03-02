void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 10];
  print(findLargest(list));
  print(sumOfElements(list));
}

//Write a function to find the largest element in an array.
int findLargest(List<int> list) {
  int result = 0;
  for (int i = 0; i < list.length; i++) {
    if (result < list[i]) result = list[i];
  }
  return result;
}

//Write a function to find the sum of all elements in an array.
int sumOfElements(List<int> list) {
  int sum = 0;
  for(int i = 0; i< list.length; i++) {
    sum += list[i];
  }
  return sum;
}
