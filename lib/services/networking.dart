import 'dart:convert';

import 'package:http/http.dart';

class NetworkHelper {
  String url;

  NetworkHelper(this.url);

  Future getData() async {
    Response response = await get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
