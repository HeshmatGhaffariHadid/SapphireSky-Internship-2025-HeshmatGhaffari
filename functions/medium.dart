void main() {
  // print(isPrime(53));
  // print(factorial(3));
  print(fibonacci(8));
}
//Check if a Number is Prime
bool isPrime(int number) {
  bool result = true;
  for (int i = 2; i < number; i++) {
    if (number % i == 0) result = false;
  }
  return result;
}

//Calculate Factorial Using Recursion
int factorial(int number) {
  if(number == 1 || number == 0){
    return 1;
  }else{
    return number * factorial(number -1);
  }
}

//Find the GCD of Two Numbers
// int gcd(int a, int b) {

// }

//Find the nth Fibonacci Number
int fibonacci(int number) {
  if(number == 0) return 0;
  if(number == 1) return 1;
  return fibonacci(number -1) + fibonacci(number -2);

}