import 'dart:io';
void main(){
  print(BMIcalculator());
  
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
