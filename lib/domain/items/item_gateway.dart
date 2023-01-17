import 'package:canteco_app/domain/items/item_response.dart';
import 'package:canteco_app/http/http_request.dart';

class ItemGateway {
  final HttpRequest _httpRequest = HttpRequest();

  static final ItemGateway _internal = ItemGateway.internal();

  factory ItemGateway() => _internal;

  ItemGateway.internal();

  Future<List<Item>> getItems() async {
    var httpResult = await _httpRequest.get(path: "/items/");

    if (httpResult.statusCode >= 200 && httpResult.statusCode <= 299) {
      var item = priceListFromJson(httpResult.body);
      return item;
    }

    return [];
  }
}
