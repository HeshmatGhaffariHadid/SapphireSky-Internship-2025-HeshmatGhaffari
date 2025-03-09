void main() {

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

