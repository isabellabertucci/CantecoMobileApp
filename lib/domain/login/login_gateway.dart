import 'package:canteco_app/domain/login/login_request.dart';
import 'package:canteco_app/domain/login/register_user_request.dart';
import 'package:canteco_app/domain/login/user_rule.dart';
import 'package:canteco_app/http/http_request.dart';

class LoginGateway {
  final HttpRequest _httpRequest = HttpRequest();

  static final LoginGateway _internal = LoginGateway.internal();

  factory LoginGateway() => _internal;

  LoginGateway.internal();

  Future<int> login({required String email, required String password}) async {
    var httpResult = await _httpRequest.post(
      path: "/user/login",
      body: LoginRequest(email: email, password: password).toJson(),
    );

    return httpResult.statusCode;
  }

  Future<int> signUp({
    required String fullName,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    var httpResult = await _httpRequest.post(
      path: "/user/register",
      body: RegisterUserRequest(
        name: fullName,
        email: email,
        password: password,
        comfirmPassword: confirmPassword,
        userRole: UserRule.student.name,
      ).toJson(),
    );

    return httpResult.statusCode;
  }
}
