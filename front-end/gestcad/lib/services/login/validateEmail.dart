bool isValidEmail(String email) {
  // Regex para validar um email
  String emailPattern =
      r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
  RegExp regex = RegExp(emailPattern);
  return regex.hasMatch(email);
}
