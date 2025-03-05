void main() {
  List<int> list = [1, 2, 3, 1, 2, 2, 3, 7];
  removeDuplicate(list);
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

