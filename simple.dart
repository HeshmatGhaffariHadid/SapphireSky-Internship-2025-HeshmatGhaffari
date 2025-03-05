void main() {
  print(checkPalindrom('ahmad'));
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
