import 'dart:convert';

class LoginRequest {
  LoginRequest({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  factory LoginRequest.fromMap(Map<String, dynamic> json) => LoginRequest(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toMap() => {
        "email": email,
        "password": password,
      };

  String toJson() => json.encode(toMap());
}
