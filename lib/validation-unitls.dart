class ValidationUtils  {
static bool isValidatEmail(String email){
  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\"
  r".[a-zA-Z]+")
      .hasMatch(email);
}
}
