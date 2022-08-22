import 'package:flutter/material.dart';
import 'package:invoice/screens/add_products.dart';
import 'package:invoice/screens/billing.dart';
import 'package:invoice/screens/build_option.dart';
import 'package:invoice/screens/business_info.dart';
import 'package:invoice/screens/invoice_setting.dart';
import 'package:invoice/screens/pdf_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => homepage(),
      'build_option': (context) => Build_option_page(),
      'business_info': (context) => Business_info_page(),
      'invoice_setting': (context) => Invoice_setting_page(),
      'billing': (context) => Billing_page(),
      'pdf_page': (context) => Pdf_page(),
      'add_products': (context) => AddProduct(),
    },
  ));
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
        title: Text(
          "Invoice generatore",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 40),
        onPressed: () {
          Navigator.of(context).pushNamed('build_option');
        },
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              width: _width,
              alignment: Alignment.center,
              child: Text(
                "Invoices",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/images/open-cardboard-box.png",
                  height: 60,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "No invoices . press + to\n Create new invoice.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
