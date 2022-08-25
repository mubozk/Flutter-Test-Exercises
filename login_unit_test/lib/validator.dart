class Validator {
  //2
  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return 'Required Field';
    }
  }
}
