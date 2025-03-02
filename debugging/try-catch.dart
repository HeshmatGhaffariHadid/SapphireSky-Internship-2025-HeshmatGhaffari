void main() {
  try {
    checkAge(17);
  } catch (exception) {
    print(exception);
  }
}

void checkAge(int age) {
  if (age < 18) {
    throw Exception('Age must be 18 or older');
  }
}
