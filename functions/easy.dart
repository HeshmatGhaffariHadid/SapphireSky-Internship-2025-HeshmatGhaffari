import 'dart:io';

void main() {
    // celsiusToFahrenheit(30.7);
    
}

//Convert Celsius to Fahrenheit
void celsiusToFahrenheit(double celsius) {
    double fahrenheit;
    fahrenheit = (celsius * 9 / 5) + 32;
    print('$celsius celsius is equal to $fahrenheit fahreheit');
}
