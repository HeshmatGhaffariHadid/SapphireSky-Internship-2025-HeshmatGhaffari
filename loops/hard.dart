import 'dart:io';
import 'dart:math';

void main() {
  // checkArmstrongNumber(153);
  // findCollatzSequence(3);
  // printPyramid();
  guessNumber();
}

//Armstrong Number
void checkArmstrongNumber(int input) {
  int number = input;
  int numberOfDigits = 0;
  int total = 0;

  while (input > 0) {
    numberOfDigits++;
    input ~/= 10;
  }
  input = number;
  while (input > 0) {
    int digit = input % 10;
    int power = digit;
    for (int i = 1; i < numberOfDigits; i++) {
      power *= digit;
    }
    total += power;
    input ~/= 10;
  }
  if (number == total) {
    print('$number is an Armstrong number');
  } else {
    print('$number is not an Armstrong number!');
  }
}

//Collatz Sequence (Hsilstone numbers)
void findCollatzSequence(int number) {
  int counter = 0;
  if (number <= 1) {
    print('Please enter a number greater than 1!');
  } else {
    while (number > 1) {
      if (number % 2 == 0) {
        number ~/= 2;
      } else if (number % 2 != 0) {
        number = (number * 3) + 1;
      }
      counter++;
    }
  }
  print('$counter steps to reach 1');
}

//Find GCD (greatest common divisor)
// int findGCD(int num1, int num2) {
// }

//Pattern printing (Pyramid)
void printPyramid() {
  for (int i = 1; i <= 4; i++) {
    for (int j = 3; j >= i; j--) {
      stdout.write(' ');
    }
    for (int k = 0; k < (i * 2) - 1; k++) {
      stdout.write('*');
    }
    print('');
  }
}

//Number guessing game
void guessNumber() {
  Random random = Random();
  int randomNumber = random.nextInt(100) + 1;
  stdout.write('Guess the answer between 1 to 100: ');
  while (true) {
    String input = stdin.readLineSync()!;
    int userGuess = int.parse(input);
    if (userGuess > randomNumber) {
      print('Too high');
    } else if (userGuess < randomNumber) {
      print('Too low');
    } else {
      print('Congratulation you find the answer which was $randomNumber');
      break;
    }
  }
}
