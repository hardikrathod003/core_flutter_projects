import 'package:flutter/material.dart';
import '../Global.dart';

class Billing_page extends StatefulWidget {
  const Billing_page({Key? key}) : super(key: key);

  @override
  State<Billing_page> createState() => _Billing_pageState();
}

class _Billing_pageState extends State<Billing_page> {
  GlobalKey<FormState> billingformkey = GlobalKey<FormState>();
  TextStyle txtStyle = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Billing"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('pdf_page');
            },
            icon: Icon(Icons.picture_as_pdf),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("add_products");
        },
        child: Container(
          width: 75,
          height: 40,
          child: Row(
            children: const [
              Icon(Icons.add),
              Text("Product"),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          height: _height * 0.9,
          width: _width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: Global.itemList.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 0,
                  child: ListTile(
                    leading: Text(
                      "${i + 1}",
                    ),
                    title: Text(
                      "Name : ${Global.itemList[i].productName}",
                    ),
                    subtitle: Text(
                      "Qty : ${Global.itemList[i].qty}",
                    ),
                    trailing: Text(
                      "${Global.itemList[i].price}",
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
