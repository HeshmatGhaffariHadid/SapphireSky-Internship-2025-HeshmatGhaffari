import 'dart:io';

void main() {
}

// Implement a function to find the longest palindrome substring in a string.
String printLongestPalindrome(String str) {
  List<String> input = str.split('');
  List<String> current = [];
  List<String> longestPalindrome = [];
  
  for (int i = 0; i<input.length; i++) {
    for (int j = i; j< input.length; j++) {
      if (i != j && input[i] == input[j]){
        current = input.sublist(i, j+1);
      } if (current.length > longestPalindrome.length && current.reversed.join() == current.join()){
        longestPalindrome = current;
      }
    }
  }
  return longestPalindrome.join();
}

// Write a function to find all permutations of a given string.
void permuteString(String input, int left, int right) {
  if (left == right) {
    print(input);
    return;
  }
  for (int i = left; i <= right; i++) {
    input = swap(input, left, i);
    permuteString(input, left + 1, right);
    input = swap(input, left, i);
  }
}

String swap(String input, int i, int j) {
  List<String> charArray = input.split('');
  String temp = charArray[i];
  charArray[i] = charArray[j];
  charArray[j] = temp;
  return charArray.join('');
}

// Implement a function to count the number of occurrences of each character in a string.
void countCharOccurrence(String input) {
  List<String> results = [];
  for (int i = 0; i < input.length; i++) {
    int counter = 0;
    for (int j = 0; j < input.length; j++) {
      if (input[i] == input[j]) {
        counter++;
      }
    }
    results.add('${input[i]} = $counter ');
  }
  print(results.toSet().join('\n'));
}

// How do you check if a string follows a given pattern (e.g., "abba" follows "dog cat cat dog")? // AI Generated 
bool followsPattern(String pattern, String input) {
  List<String> words = input.split(' ');
  if (pattern.length != words.length) return false;
  
  Map<String, String> charToWord = {};
  Map<String, String> wordToChar = {};
  for (int i = 0; i < pattern.length; i++) {
    String char = pattern[i];
    String word = words[i];
    if (charToWord.containsKey(char)) {
      if (charToWord[char] != word) {
        return false; 
      }
    } else {
      if (wordToChar.containsKey(word)) {
        return false;
      }
      charToWord[char] = word;
      wordToChar[word] = char;
    }
  }
  return true;
}

