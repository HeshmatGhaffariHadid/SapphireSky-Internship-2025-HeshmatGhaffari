import 'dart:io';
void main (){

checkNumberCondition();

print (evenOddChecker(10));

int factorialNum = 5;
print('Factorial of $factorialNum is: ${factorial(factorialNum)}');

List<int> numbers = [1,2,3,4,5,6,7,8,9,10];
print('The sunm of list\'s elements is: ${sumOfListNumbers(numbers)}');

int radius = 12;
print('The circle radius: $radius, The circle Area: ${circleArea(radius)}');

}

//Write a program that takes user input and prints whether it is a positive, negative, or zero.
void checkNumberCondition(){
stdout.write('Please enter a number to check if it is positive negative or zero: ');
String? input = stdin.readLineSync();
int number = int.parse(input!);

  if(number > 0){
    print('The inputted number is positive.');
  }else if(number < 0){
    print('The inputted number is negative.'); 
  }else{
    print('The input is ZERO!');
  }
}

//Write a function to check if a number is even or odd.
String evenOddChecker(int input){  
  return input % 2 == 0 ? '$input is even' : '$input is odd'; 
}

//Write a function that calculates the factorial of a given number.
int factorial(int number){
  if(number == 0 || number ==1){
    return 1;
  }else{
    return number * factorial(number - 1);
  }
}

//Write a function to find the sum of all numbers in an array.
int sumOfListNumbers(List<int> input){
  int sum = 0;
for(int i = 0; i< input.length; i++){
  sum += input[i];
}
return sum;
}

//What are arrow functions in JavaScript, and how are they different from regular functions?
//Answer: Arrow functions in dart are used when the function executes only one expression
double circleArea(int radius) => 3.14 * (radius * radius);



