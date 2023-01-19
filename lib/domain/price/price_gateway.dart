import 'package:canteco_app/domain/price/price_list_response.dart';
import 'package:canteco_app/http/http_request.dart';

class PriceGateway {
  final HttpRequest _httpRequest = HttpRequest();

  static final PriceGateway _internal = PriceGateway.internal();

  factory PriceGateway() => _internal;

  PriceGateway.internal();

  Future<List<Price>> getPriceList() async {
    var httpResult = await _httpRequest.get(path: "/prices/");

    if (httpResult.statusCode >= 200 && httpResult.statusCode <= 299) {
      var priceList = priceListFromJson(httpResult.body);
      return priceList;
    }

    return [];
  }
}
