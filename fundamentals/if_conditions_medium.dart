import 'dart:io';

void main() {
  //Triangle Validity
  print('Let\'s check tree sides of a triangle form a valid one or not...');

  print('Enter the first side value in cm: ');
  String first = stdin.readLineSync()!;
  int firstSide = int.parse(first);

  print('Enter the second side value in cm: ');
  String second = stdin.readLineSync()!;
  int secondSide = int.parse(second);

  print('Enter the third side value in cm: ');
  String third = stdin.readLineSync()!;
  int thirdSide = int.parse(third);

  if (firstSide + secondSide > thirdSide &&
      secondSide + thirdSide > firstSide &&
      thirdSide + firstSide > secondSide) {
    print('It is a valid triangle');
  } else {
    print('It is an invalid triangle!');
  }
}
