import 'dart:io';
import 'package:canteco_app/http/api_url.dart';
import 'package:canteco_app/http/http_response.dart';
import 'package:canteco_app/http/log_interceptor.dart';
import 'package:http_interceptor/http_interceptor.dart';

//singleton class
class HttpRequest {
  static final HttpRequest _internal = HttpRequest.internal();

  factory HttpRequest() => _internal;

  HttpRequest.internal();

  final _httpClient = InterceptedClient.build(interceptors: [LogInterceptor()]);

  Future<HttpResponse> post(
      {required String path, required String body}) async {
    var headers = <String, String>{};
    headers.putIfAbsent('content-type', () => 'application/json');

    try {
      var url = Uri.parse("${ApiUrl.baseUrl}$path");

      var apiResult = await _httpClient.post(url, headers: headers, body: body);

      return HttpResponse(
        statusCode: apiResult.statusCode,
        body: apiResult.body,
      );
    } on HttpException {
      return HttpResponse(statusCode: 500, body: "");
    }
  }
}
