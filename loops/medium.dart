void main (){
    // checkPrimeNumber(21);
    findFactorial(5);

}
//Check for prime number
void checkPrimeNumber(int number){
    bool result = true;
    for(int i = 2; i < number; i++){
        if(number % i == 0) 
            result = false;
    }
    result ? print('$number is a prime number') : print('$number is not a prime number'); 
}

//Factorial of a number
void findFactorial(int number){
    int result = number;
    if(number == 0 || number == 1){
        print('Factorial of 0 and 1 is: 1');
    }else{
        for(int i = number -1; i >= 1; i--){
        result *= i;
    }
    print( 'Factorial of $number is: $result');
    }
}