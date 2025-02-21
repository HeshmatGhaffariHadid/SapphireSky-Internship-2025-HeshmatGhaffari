import 'dart:io';

void main() {
  // celsiusToFahrenheit(30.7);
  // maxOfThree(12, 18, 2129);
  // print(isEven(12));
  // print(countVowels('Hello world'));
  print(reverseString('Hello'));
}

//Convert Celsius to Fahrenheit
void celsiusToFahrenheit(double celsius) {
  double fahrenheit;
  fahrenheit = (celsius * 9 / 5) + 32;
  print('$celsius celsius is equal to $fahrenheit fahreheit');
}

//Find the Maximum of Three Numbers
void maxOfThree(int a, int b, int c) {
  if (a > b && a > c) {
    print('The maximum number is: $a');
  } else if (b > a && b > c) {
    print('The maximum number is: $b');
  } else {
    print('The maximum number is: $c');
  }
}

//Check Even or Odd
bool isEven(int number) {
  if (number % 2 == 0) {
    return true;
  }
  return false;
}

//Count vowels in a String
int countVowels(String input) {
  //we can use built in function of countVowel()
  List vowels = ['A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u'];
  String check;
  int counter = 0;
  for (int i = 0; i < vowels.length; i++) {
    check = vowels[i];
    for (int j = 0; j < input.length; j++) {
      if (check == input[j]) {
        counter++;
      }
    }
  }
  return counter;
}

//Reverse a String
String reverseString(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}
