import 'dart:convert';
import 'package:http/http.dart' as http;
//بتجيب بيانات من موقع معين وتعرضها علي شكل جيسون 
class NetWorkHelper {
  NetWorkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;

      return json.decode(data);
    } else {
      print(response.statusCode);
    }
  }
}
