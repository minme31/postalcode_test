import 'package:flutter/material.dart';
import 'package:postalcode_test/services/webservice.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('住所検索サンプル'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextFormField(
              decoration: const InputDecoration(
                label: Text('郵便番号'),
                helperText: '郵便番号７桁（ハイフンあり・なし可）',
                hintText: '000-1234',
                border: OutlineInputBorder(),
                prefix: Text('〒'),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () async {
              await WebService.getAddress('test');
            },
            child: const Text('郵便番号から住所を検索'),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text('検索結果'),
        ],
      ),
    );
  }
}
