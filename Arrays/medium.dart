void main() {
  List list = [1,2,3,4,5,6,7,8,9,10];
  reverseArray(list);

}

//Write a function to reverse an array without using the built-in reverse() method.
void reverseArray (List list) {
  List reversedList = [];
  for(int i = list.length -1; i>= 0; i--) {
    reversedList.add(list[i]);
  }
  print(reversedList);
}