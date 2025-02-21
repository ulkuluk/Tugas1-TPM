class AuthService {
  final String correctEmail = "farizal";
  final String correctPassword = "123";

  bool login(String email, String password) {
    return email == correctEmail && password == correctPassword;
  }
}
