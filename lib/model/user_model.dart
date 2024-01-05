class UserModel {
  final String? name;
  final String? email;
  final String? password;
  final String? phone;
  final double? price;
  final String? serviceName;
  final Map? selectedProductsMobil;
  final Map? selectedProductsWeb;
  final Map? selectedProductsCyber;
  final Map? selectedProductsMachine;
  final Map? selectedProductsData;
  final Map? selectedProductsCloud;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    this.price,
    this.selectedProductsMobil,
    this.selectedProductsWeb,
    this.selectedProductsCyber,
    this.selectedProductsMachine,
    this.selectedProductsData,
    this.selectedProductsCloud,
    this.serviceName,
  });

  static UserModel fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      email: map['email'],
      password: map['password'],
      phone: map['phone'],
      serviceName: map['serviceName'],
      selectedProductsMobil: map['selectedProductsMobil'],
      selectedProductsWeb: map['selectedProductsWeb'],
      selectedProductsCyber: map['selectedProductsCyber'],
      selectedProductsMachine: map['selectedProductsMachine'],
      selectedProductsData: map['selectedProductsData'],
      selectedProductsCloud: map['selectedProductsCloud'],
      price: map['priceForMobil'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
    };
  }
}
