import 'dart:ffi';

void main() {
 print(checkAnagramStrings('racee', 'carew'));
}

//How can you find the first non-repeating character in a string?
String findNonRepeatingChar(String input) {
  input = input.toLowerCase();
  for(String char in input.split('')) {
    if(input.indexOf(char) == input.lastIndexOf(char)) {
      return char;
    }
  }
  return 'No unique charecter exists!';
}

// Write a function to check if two strings are anagrams.        race = care
 bool checkAnagramStrings (String input1, String input2) {
  if (input1.length != input2.length) return false;
  List<String> list1 = input1.split('');
  List<String> list2 = input2.split('');
  list1.sort();
  list2.sort();
  if(list1.join() == list2.join()) return true;
  return false;
 }
