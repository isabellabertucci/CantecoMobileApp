import 'package:canteco_app/domain/login/price/price_request.dart';
import 'package:canteco_app/http/http_request.dart';

class PriceGateway {
  final HttpRequest _httpRequest = HttpRequest();

  static final PriceGateway _internal = PriceGateway.internal();

  factory PriceGateway() => _internal;

  PriceGateway.internal();

  Future<int> get(
      {required String userType,
      required String priceWIva,
      required String priceWoIva}) async {
    var httpResult = await _httpRequest.post(
      path: "/prices/",
      body: PriceRequest(
              priceWIva: priceWIva, priceWoIva: priceWoIva, userType: userType)
          .toJson(),
    );

    return httpResult.statusCode;
  }
}
