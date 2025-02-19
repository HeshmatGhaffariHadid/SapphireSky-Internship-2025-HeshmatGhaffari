import 'dart:io';
void main(){
  // print(BMIcalculator());
  // print(billCalcualtor());
  print('Is your password strength? ${passwordStrengthChecker()}');
  
  
}
//Body mass index (BMI) calculator
String BMIcalculator(){
  stdout.write('Please enter your weight in kilogram: ');
  String input1 = stdin.readLineSync()!;
  int weight = int.parse(input1);

  stdout.write('Now enter your height in meter: ');
  String input2 = stdin.readLineSync()!;
  double height = double.parse(input2);

  double bmi = weight / (height *  height);

    if(bmi < 18.5){
      return 'Underweight';
    }else if(bmi >= 18.5 && bmi < 25){
      return 'Normal weight';
    }else if(bmi >= 25 && bmi < 30){
      return 'Overweight';
    }else if(bmi >= 30){
      return 'Obese';
    }else{
      return 'your input is invalid!';
    }
}
//Electricity Bill Calculator
String billCalcualtor(){
  double? billAmount;
  stdout.write('Enter your consumed units: ');
  String input = stdin.readLineSync()!;
  int units = int.parse(input);

  if(units > 0){
    if(units <= 100){
      billAmount = units * 0.5;
    }else if(units <= 200){
      billAmount = units * 0.75;
    }else if(units <= 500){
      billAmount = units * 1.2;
    }else if(units > 500){
      billAmount = units * 1.5;
    }
    return 'Your bill amount is: \$$billAmount';
  }else{
    return 'Your input must be above ZERO!';
  }
}

//Password Strength Checker
bool passwordStrengthChecker(){
  stdout.write('Please enter your password for checking it\'s strength: ');
  String password = stdin.readLineSync()!;
  final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)');
  return regex.hasMatch(password);
}