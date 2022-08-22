class Global {
  static String? client_name;
  static String? client_email;
  static String? client_phone;
  static String? business_name;
  static String? business_email;
  static String? business_phone;
  static String? business_address;
  static String? business_country;
  static String? invoice_number;
  static String? invoice_date;
  static String? invoice_due_date;
  static String? payment;
  static String? description;
  static var itemList = [];
  String? productName;
  String? price;
  String? qty;

  Global({required this.productName, required this.price, required this.qty});
  factory Global.fromAdd(
      {required String productName,
      required String price,
      required String qty}) {
    return Global(
      productName: productName,
      price: price,
      qty: qty,
    );
  }
}
