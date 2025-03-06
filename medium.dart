void main() {
  print(
      'The first non-repeating letter of your input is: ${findNonRepeatingChar('Hello')}');
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
