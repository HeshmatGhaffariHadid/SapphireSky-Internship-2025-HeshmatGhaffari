void main() {
print(isStringRotation('hello', 'loheli'));
}

//How can you find the first non-repeating character in a string?
String findNonRepeatingChar(String input) {
  input = input.toLowerCase();
  for (String char in input.split('')) {
    if (input.indexOf(char) == input.lastIndexOf(char)) {
      return char;
    }
  }
  return 'No unique charecter exists!';
}

// Write a function to check if two strings are anagrams.        race = care
bool checkAnagramStrings(String input1, String input2) {
  if (input1.length != input2.length) return false;
  List<String> list1 = input1.split('');
  List<String> list2 = input2.split('');
  list1.sort();
  list2.sort();
  if (list1.join() == list2.join()) return true;
  return false;
}

// Implement a function to compress a string using character counts ("aabcccccaaa" → "a2b1c5a3").
String compressString(String input) {
  String result = '';
  String lastChar = '';
  for (int i = 0; i < input.length; i++) {
    int letterCounter = 0;
    String currentChar = input[i];

    if (currentChar != lastChar) {
      for (int j = 0; j < input.length; j++) {
        if (input[i] == input[j]) {
          letterCounter++;
          lastChar = input[i];
        }
      }
      result += input[i] + letterCounter.toString();
    }
  }
  return result;
}

// How do you check if one string is a rotation of another string?
bool isStringRotation (String input, String rotate) {
  input = input.toLowerCase();
  String combination = input + input;
  return combination.contains(rotate);
}

