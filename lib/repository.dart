import 'dart:convert';
import 'package:http/http.dart' as http;

class FetcApiData {
  setProductos() async {
    try {
      var response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        return body;
      }
    } catch (e) {
      print(e);
    }
  }
}
