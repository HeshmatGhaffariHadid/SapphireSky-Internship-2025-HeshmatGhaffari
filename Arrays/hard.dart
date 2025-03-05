void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15];
  print('The missing number is: ${findMissingNum(list)}');
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

