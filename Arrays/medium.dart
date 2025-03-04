void main() {
  List<int> list1 = [1, 2, 9, 5, 3, 4, 6];
  List<int> list2 = [1, 3, 9, 7, 5];
  print(findIntersectionOfArrays(list1, list2));
}

//Write a function to reverse an array without using the built-in reverse() method.
void reverseArray(List<int> list) {
  List<int> reversedList = [];
  for (int i = list.length - 1; i >= 0; i--) {
    reversedList.add(list[i]);
  }
  print(reversedList);
}

//How do you merge two sorted arrays into one sorted array? [1,2,3,4,5] [-2,-1, 0, 1, 2 ]
// void mergeTwoArrays(List<int> list1, List<int> list2) {
//   List<int> mergedList = [];
//   // int length = max<int>(list1.length, list2.length);
//   int? element;
//   for (int i = 0; i < list1.length; i++) {
//     for (int j = 0; j < list2.length; j++) {
//       if (list1[i] <= list2[j]) {
//         element = list1[i];
//       } else if (list1[i] > list2[j]) {
//         element = list2[j];
//       }
//     }
//     mergedList.add(element!);
//   }
//   print(mergedList);
// }

// Implement a function that rotates an array k times to the right.
List<int> rotateList(List<int> list, int k) {
  int lastElement = list.length - 1;
  while (k > 0) {
    list.insert(0, list[lastElement]);
    list.removeLast();
    k--;
  }
  return list;
}

//Write a function to find the second largest number in an array.
int findSecondLargestElement(List<int> list) {
  int largest = 0;
  int secondLargest = 0;
  for (int i = 0; i < list.length; i++) {
    for (int i = 0; i < list.length; i++) {
      if (largest <= list[i]) {
        largest = list[i];
      }
    }
    if (secondLargest <= list[i]) {
      if (list[i] < largest) secondLargest = list[i];
    }
  }
  return secondLargest;
}

//Implement a function that finds the intersection of two arrays.
List<int> findIntersectionOfArrays(List<int> list1, List<int> list2) {
  List<int> intersectionList = [];
  for (int i = 0; i < list1.length; i++) {
    for (int j = 0; j < list2.length; j++) {
      if (list1[i] == list2[j]) {
        intersectionList.add(list1[i]);
      }
    }
  }
  return intersectionList;
}
