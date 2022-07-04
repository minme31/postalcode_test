import 'dart:convert';
import 'dart:ffi';

import 'package:postalcode_test/models/adress_model.dart';
import 'package:http/http.dart' as http;

class WebService {
  static Future<AddressModel> getAddress(String postalCode) async {
    // APIから住所を取得する処理
    // TODO: PostalCodeを使うように修正
    String url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=7830060";
    final response = await http.get(Uri.parse(url));
    print(response);
    if (response.statusCode == 200) {
      final jsonRaw = response.body;
      // 取得できたJSON形式の文字列を、AddressModelに変換する処理
      print(jsonRaw);
      // dartで扱うため、Mapの形に変換する。
      final json = jsonDecode(jsonRaw) as Map<String, dynamic>;
      final jsonResults = json['results'];
      final results = <Map<String, String>>[];
      if (jsonResults is List) {
        for (final result in jsonResults) {
          if (result is Map<String, String>) {
            results.add(result);
          }
        }
      } else {
        throw Exception('type error');
      }
      print(results[0]['address1']);
      final result = AddressModel.fromJson(results[0]);
      return result;
    } else {
      throw Exception('Error');
    }
  }
}
