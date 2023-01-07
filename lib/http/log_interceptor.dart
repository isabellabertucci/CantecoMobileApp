import 'package:flutter/foundation.dart';
import 'package:http_interceptor/http_interceptor.dart';

class LogInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    if (kDebugMode) {
      debugPrint("----- Request -----");
      debugPrint("URL: ${data.method} ${data.url}");
      debugPrint("HEADER -> ${data.headers}");
      debugPrint("BODY -> ${data.body}");
    }

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    if (kDebugMode) {
      debugPrint("----- Response -----");
      debugPrint("URL: ${data.url}");
      debugPrint("CODE: ${data.statusCode}");
      debugPrint("BODY -> ${data.body}");
    }

    return data;
  }
}
