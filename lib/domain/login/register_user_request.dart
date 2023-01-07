import 'dart:convert';

class RegisterUserRequest {
  RegisterUserRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.comfirmPassword,
    required this.userRole,
  });

  final String name;
  final String email;
  final String password;
  final String comfirmPassword;
  final String userRole;

  factory RegisterUserRequest.fromMap(Map<String, dynamic> json) =>
      RegisterUserRequest(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        comfirmPassword: json["comfirmPassword"],
        userRole: json["userRole"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "password": password,
        "comfirmPassword": comfirmPassword,
        "userRole": userRole,
      };

  String toJson() => json.encode(toMap());
}
