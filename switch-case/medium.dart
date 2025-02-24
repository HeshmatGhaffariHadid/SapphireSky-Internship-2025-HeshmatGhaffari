import 'dart:io';
import 'dart:math';

void main() {
  print(findWinner('paper'));
}

//Student Grade System
void printStudentGrade(int score) {
  switch (score) {}
}

//Currency Converter
void convetCurrency(String currency) {
  String base = 'afs';
  switch (currency.toUpperCase()) {
    case 'USD':
      print('1 $currency = 73$base');
      break;
    case 'EUR':
      print('1 $currency = 77.3$base');
      break;
    case 'INR':
      print('1 $currency = 1.17$base');
      break;
    case 'JPY':
      print('1 $currency = 0.45$base');
      break;
  }
}

//Menu-Based ATM System
void useATMsystem(int input) {
  switch (input) {
    case 1:
      print('Check balance method is called');
      break;
    case 2:
      print('Withdraw some money');
      break;
    case 3:
      print('Deposite some money');
      break;
    case 4:
      exit(0);
  }
}

//Determine Season by Month
String determineSeason(int numberOfMonth) {
  switch (numberOfMonth) {
    case 12:
    case 1:
    case 2:
      return 'Winter';
    case 3:
    case 4:
    case 5:
      return 'Spring';
    case 6:
    case 7:
    case 8:
      return 'Summer';
    case 9:
    case 10:
    case 11:
      return 'Fall';
    default:
      return 'Invalid month number';
  }
}

//Rock, Paper, Scissors Game
String findWinner(String userInput) {
  List<String> options = ['rock', 'paper', 'scissors'];
  Random random = Random();
  int randomNumber = random.nextInt(3);
  String winner = options[randomNumber];
  switch (winner) {
    case 'rock':
      return 'The winner is $winner';
    case 'paper':
      return 'The winner is $winner';
    case 'scissors':
      return 'The winner is $winner';
    default:
      return 'invalid input!';
  }
}
