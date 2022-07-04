class AddressModel {
  late final String zipCode;
  late final String prefecture;
  late final String city;
  late final String line1;

  AddressModel(this.zipCode, this.prefecture, this.city, this.line1);

  AddressModel.fromJson(Map<String, String> map) {
    this.zipCode = 'test';
    this.prefecture = 'pref';
    this.city = 'test';
    this.line1 = 'test';
  }
}
