void main() {
  List<int> list = [1, -2, 3, -1, 5, 2, 3];
  // List<int> list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15];
  // // print('The missing number is: ${findMissingNum(list)}');
  // print(checkArraysEqualance(list1, list2));
  print('Maximum sum subarray is: ${findMaxSubarraySum(list)}');
}

// How do you remove duplicates from an array efficiently?
void removeDuplicate(List<int> list) {
  List<int> uniqueElements = [];
  for (int i = 0; i < list.length; i++) {
    int counter = 0;
    for (int j = 0; j < list.length; j++) {
      if (list[i] == list[j]) {
        counter++;
      }
    }
    if (counter == 1) uniqueElements.add(list[i]);
  }
  print(uniqueElements);
}

// Write a function to find the missing number in an array of 1 to N.
int findMissingNum(List<int> list) {
  int missedNum = 0;

  for (int i = 0; i < list.length; i++) {
    if (list[i] != i + 1) {
      missedNum = i + 1;
      break;
    }
  }
  return missedNum;
}

// How do you check if two arrays are equal?
bool checkArraysEqualance(List<int> list1, List<int> list2) {
  if (list1.length != list2.length) return false;
  for (int i = 0; i < list1.length; i++) {
    if (list1[i] != list2[i]) return false;
  }
  return true;
}

// Implement a function to find the subarray with the maximum sum (Kadane’s Algorithm).
List<int> findMaxSubarraySum(List<int> list) {
  int maxEnding = list[0];
  int maxSoFar = list[0];
  int start = 0;
  int end = 0;
  int temp = 0;

  for (int i = 1; i < list.length; i++) {
    if (list[i] > maxEnding + list[i]) {
      maxEnding = list[i];
      temp = i;
    } else {
      maxEnding += list[i];
    }

    if (maxEnding > maxSoFar) {
      maxSoFar = maxEnding;
      start = temp;
      end = i;
    }
  }
  return list.sublist(start, end +1);
}
