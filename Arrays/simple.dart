void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 2, 3, 4, 2, 7, 10];
  // print(findLargest(list));
  // print(sumOfElements(list));
  // print(checkElement(list, 4));
  countOccurrence(list, 2);
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
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  return sum;
}

//How do you check if an array contains a specific element?
bool checkElement(List<int> list, int element) {
  bool check = false;
  for (int i = 0; i < list.length; i++) {
    if (list[i] == element) check = true;
  }
  return check;
}

//Write a function to count the occurrences of a specific element in an array.
void countOccurrence(List<int> list, int element) {
  int counter = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] == element) counter++;
  }
  print('The occurrence of $element is: $counter');
}

