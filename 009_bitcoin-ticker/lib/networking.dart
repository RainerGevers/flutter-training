import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper();

  Future getData(String coin, currency) async {
    Map<String, String> headers = {
      'X-CoinAPI-Key': '589EFFE2-9EA1-491C-875C-87692AC61CC1'
    };
    http.Response response = await http.get(
        'https://rest.coinapi.io/v1/exchangerate/$coin/$currency',
        headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
      print(response.body);
    }
  }
}
