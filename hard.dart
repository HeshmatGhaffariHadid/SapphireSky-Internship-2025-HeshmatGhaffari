import 'dart:io';

void main() {
  countCharOccurrence('inuputpi');
}

// Implement a function to find the longest palindrome substring in a string.
// String longestPalindrome(String s) {
//   if (s.isEmpty) return "";

//   int start = 0, maxLength = 0;

//   void expandAroundCenter(int left, int right) {
//     while (left >= 0 && right < s.length && s[left] == s[right]) {
//       left--;
//       right++;
//     }

//     int length = right - left - 1;
//     if (length > maxLength) {
//       start = left + 1;
//       maxLength = length;
//     }
//   }

//   for (int i = 0; i < s.length; i++) {
//     expandAroundCenter(i, i);
//     expandAroundCenter(i, i + 1);
//   }

//   return s.substring(start, start + maxLength);
// }

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
