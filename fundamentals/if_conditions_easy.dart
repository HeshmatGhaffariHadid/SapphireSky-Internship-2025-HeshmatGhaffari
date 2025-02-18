import 'dart:io';

void main() {
  //1- Check odd or even
  stdout.write('Please enter a number to check if it is even or odd: ');
  String? input = stdin.readLineSync();
  int number = int.parse(input!);
  if (number % 2 == 0) {
    print('The $number is even');
  } else if (number % 2 != 0) {
    print('The $number is odd');
  }
  //2- Grade calculator
  String? grade;
  stdout.write('Enter the student score: ');
  String? input1 = stdin.readLineSync()!;
  int score = int.parse(input1);
  if (score <= 100 && score >= 0) {
    if (score >= 90) {
      grade = 'A';
    } else if (score >= 80) {
      grade = 'B';
    } else if (score >= 70) {
      grade = 'C';
    } else if (score >= 60) {
      grade = 'D';
    } else {
      print('Student failed!');
      grade = 'F';
    }
    print('The student\'s score is $score, and his/her grade is $grade');
  } else {
    print('Score is invalid');
  }

  //Minimum of two numbers
  print('Let\'s check which number is smaller...');
  stdout.write('Please enter a number: ');
  String firstInput = stdin.readLineSync()!;
  stdout.write('Now enter another number: ');
  String secondInput = stdin.readLineSync()!;
  int num1 = int.parse(firstInput);
  int num2 = int.parse(secondInput);

  if (num1 > num2) {
    print('$num2 is smaller than $num1');
  } else if (num2 > num1) {
    print('$num1 is smaller than $num2');
  } else {
    print('The numbers are equal!');
  }

  //Leap year checker
  print('Let\'s check if a year is leap or not...');
  stdout.write('Enter a year: ');
  String inputYear = stdin.readLineSync()!;
  int year = int.parse(inputYear);
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        print('$year is a leap year');
      } else {
        print('Not leap year');
      }
    } else {
      print('Leap year');
    }
  } else {
    print('Not leap year!');
  }
}
