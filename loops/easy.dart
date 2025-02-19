void main (){
  // printUpTo100();
  print(sumNuturalNumber(3));
   
}
//print 1 to 100
void printUpTo100(){
  for(int i = 1; i <= 100; i++){
    print(i);
  }
}
//Sum of first N nutural numbers
double sumNuturalNumber(int n){
  double sum = n * (n + 1) / 2;
  return sum;
}