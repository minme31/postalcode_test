import 'package:flutter/material.dart';
import 'package:postalcode_test/models/adress_model.dart';
import 'package:postalcode_test/services/webservice.dart';

class HomePageStateful extends StatefulWidget {
  const HomePageStateful({Key? key}) : super(key: key);

  @override
  State<HomePageStateful> createState() => _HomePageStatefulState();
}

class _HomePageStatefulState extends State<HomePageStateful> {
  final TextEditingController postalCodeController = TextEditingController();
  AddressModel? addressModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextFormField(
              controller: postalCodeController,
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
              final postalCode = postalCodeController.text;
              final addressModel = await WebService.getAddress(postalCode);
              setState(() {
                this.addressModel = addressModel;
              });
            },
            child: const Text('郵便番号から住所を検索'),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text('検索結果'),
          Text(addressModel != null
              ? '${addressModel!.prefecture}, ${addressModel!.city}, ${addressModel!.line1}'
              : '未取得'),
        ],
      ),
    );
  }
}
