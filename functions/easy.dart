import 'dart:io';

void main() {
    // celsiusToFahrenheit(30.7);
    // maxOfThree(12, 18, 2129);
    // print(isEven(12));
    
}

//Convert Celsius to Fahrenheit
void celsiusToFahrenheit(double celsius) {
    double fahrenheit;
    fahrenheit = (celsius * 9 / 5) + 32;
    print('$celsius celsius is equal to $fahrenheit fahreheit');
}
//Find the Maximum of Three Numbers
void maxOfThree (int a, int b, int c) {
    if(a > b && a > c) {
        print('The maximum number is: $a');
    }else if(b > a && b > c){
        print('The maximum number is: $b');
    }else{
        print('The maximum number is: $c');
    }
}
//Check Even or Odd
bool isEven(int number) {
    if(number % 2 == 0){
        return true;
    }
    return false;
}
