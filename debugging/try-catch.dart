void main() {
  try {
    int age = 17;
    checkAge(age);
  } catch (exception) {
    print(exception);
  }
}

void checkAge(int age) {
  if (age < 18) {
    throw Exception('Age must be 18 or older');
  }
}
