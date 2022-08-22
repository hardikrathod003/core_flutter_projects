import 'package:flutter/material.dart';
import '../Global.dart';

class Invoice_setting_page extends StatefulWidget {
  const Invoice_setting_page({Key? key}) : super(key: key);

  @override
  State<Invoice_setting_page> createState() => _Invoice_setting_pageState();
}

class _Invoice_setting_pageState extends State<Invoice_setting_page> {
  GlobalKey<FormState> invoiceformkey = GlobalKey<FormState>();
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
        title: Text("Invoice Setting"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          height: _height * 0.9,
          width: _width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Form(
            key: invoiceformkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Invoice number",
                    style: txtStyle,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please Enter your Invoice number";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.invoice_number = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "123456",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Invoice Date",
                    style: txtStyle,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please Enter your Date of invoice";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.invoice_date = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "08/09/2022",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Due Date",
                    style: txtStyle,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please Enter your invoice due date";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.invoice_due_date = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "12/09/2022",
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (invoiceformkey.currentState!.validate()) {
                          invoiceformkey.currentState!.save();
                        }
                      },
                      child: const Text("Save"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        invoiceformkey.currentState!.reset();
                        setState(() {
                          Global.payment = '';
                          Global.invoice_due_date = '';
                          Global.invoice_date = '';
                          Global.invoice_number = '';
                        });
                      },
                      child: const Text("Clear"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
