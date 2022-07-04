import 'package:postalcode_test/models/adress_model.dart';
import 'package:http/http.dart' as http;

class WebService {
  static Future<AddressModel> getAddress(String postalCode) async {
    // APIから住所を取得する処理
    // TODO: PostalCodeを使うように修正
    String url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=7830060";
    final response = await http.get(Uri.parse(url));

    // 取得できたJSON形式の文字列を、AddressModelに変換する処理
  }
}
