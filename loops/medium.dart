void main (){
    // checkPrimeNumber(21);
    // findFactorial(5);
    
    // List<int> numbers = [1,2,3,45,6,7,3,0,-12,22,81];
    // findLargestAndSmallest(numbers);

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

//Find largest and smallest in a list
void findLargestAndSmallest(List<int> list){
  int largest = list[0];
  int smallest = list[0];
    for(int i = 0; i < list.length; i++){
        if(list[i] > largest){
            largest = list[i];
        }
        if(list[i] < smallest){
            smallest = list[i];
        }
    }
  print('The largest is $largest, and the smallest is $smallest');
}