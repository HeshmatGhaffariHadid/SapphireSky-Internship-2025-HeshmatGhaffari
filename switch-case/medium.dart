void main () {
  convetCurrency('inr');

}
//Student Grade System
void printStudentGrade(int score) {
  switch (score) {
  }
}
//Currency Converter
void convetCurrency(String currency) {
  String base = 'afs';
  switch (currency.toUpperCase()) {
    case 'USD':
    print('1 $currency = 73$base');
    break;
    case 'EUR':
    print('1 $currency = 77.3$base');
    break;
    case 'INR':
    print('1 $currency = 1.17$base');
    break;
    case 'JPY':
    print('1 $currency = 0.45$base');
    break;
  }
}