import 'dart:io';
void main(){
  //1- Check odd or even
  stdout.write('Please enter a number to check if it is even or odd: ');
  String? input = stdin.readLineSync();
  int number = int.parse(input!);
    if(number % 2 == 0){
      print('The $number is even');
    }else if(number % 2 != 0){
      print('The $number is odd');
    }
  //2- Grade calculator
  String? grade;
  stdout.write('Enter the student score: ');
    String? input1 = stdin.readLineSync()!;
    int score = int.parse(input1);
      if(score < 60){
        grade = 'F';
      }else if(score >= 60 && score <= 69){
        grade = 'D';
      }else if(score >= 70 && score <= 79){
        grade = 'C';
      }else if(score >= 80 && score <= 89){
        grade = 'B';
      }else if(score >= 90 && score <= 100){
        grade = 'A';
      }else{
        print ('The score is invalid!');
      }
      print('The student score is $score, and his/her grade is $grade');

}