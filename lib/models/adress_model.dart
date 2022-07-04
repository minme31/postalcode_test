class AddressModel {
  late final String zipCode;
  late final String prefecture;
  late final String city;
  late final String line1;

  AddressModel(this.zipCode, this.prefecture, this.city, this.line1);

  AddressModel.fromJson(Map<String, dynamic> map) {
    zipCode = map['zipcode'];
    prefecture = map['address1'];
    city = map['address2'];
    line1 = map['address3'];
  }
}
