import 'dart:convert';

void main() {
  // print(checkPalindrom('ahmad'));
  // print(countVowel('Ali Ahmaaad'));
  // print(reverseString('Ahmad'));
  print(removeStringSpaces('ali ahmad'));
}

//Write a function to check if a string is a palindrome.
bool checkPalindrom(String input) {
  input = input.toLowerCase();
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  if (input == reversed) return true;
  return false;
}

// How do you count the number of vowels in a string?
int countVowel(String input) {
  input = input.toLowerCase();
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  int counter = 0;
  for (int i = 0; i < input.length; i++) {
    for (int j = 0; j < vowels.length; j++) {
      if (input[i] == vowels[j]) counter++;
    }
  }
  return counter;
}

//Write a function to reverse a string.
String reverseString (String input) {
  String reversed = '';
  for(int i= input.length-1; i>=0; i--) {
    reversed += input[i];
  }
  return reversed;
}

// How do you remove spaces from a given string?
String removeStringSpaces(String input) {
  String result = '';
  for(int i = 0; i< input.length; i++) {
    if(input[i] != ' ') {
      result += input[i];
    }
  }
  return result;
}

