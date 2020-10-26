import 'package:http/http.dart' as http;
import 'dart:convert';


class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

 Future  getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data) ;


      //var dacodedData = jsonDecode(data)[0]['name'];
    } else {
      print(response.statusCode);
    }
  }
}