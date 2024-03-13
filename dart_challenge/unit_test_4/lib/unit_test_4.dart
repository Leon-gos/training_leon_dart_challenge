bool isPasswordValid(String password) {
  // Check for lenght at least 6
  if (password.length < 6) {
    return false;
  }

  // Check for at least one numeric character
  if (!password.contains(RegExp(r'[0-9]'))) {
    return false;
  }

  // Check for at least one special character
  if (!password.contains(RegExp(r'[!@#$%^&*()]'))) {
    return false;
  }

  // Check for at least one letter (uppercase or lowercase)
  if (!password.contains(RegExp(r'[a-zA-Z]'))) {
    return false;
  }

  return true;
}
