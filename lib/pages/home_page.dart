import 'package:flutter/material.dart';

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
                hintText: '郵便番号７桁（ハイフンあり・なし可）',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {},
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
