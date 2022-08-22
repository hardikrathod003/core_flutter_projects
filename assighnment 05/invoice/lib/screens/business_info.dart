import 'package:flutter/material.dart';
import '../Global.dart';

class Business_info_page extends StatefulWidget {
  const Business_info_page({Key? key}) : super(key: key);

  @override
  State<Business_info_page> createState() => _Business_info_pageState();
}

class _Business_info_pageState extends State<Business_info_page> {
  GlobalKey<FormState> businessformkey = GlobalKey<FormState>();
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
        title: Text("Business info"),
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
            key: businessformkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Business Name",
                    style: txtStyle,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please Enter your Business Name";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.business_name = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Business Name",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Email Address",
                    style: txtStyle,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please Enter your email address";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.business_email = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Business Email",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Phone number",
                    style: txtStyle,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please Enter your phone number";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.business_phone = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "+91 9876543219",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Address",
                    style: txtStyle,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please Enter your Address";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.business_address = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Address",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Country",
                    style: txtStyle,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please Enter your country";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.business_country = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Country",
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (businessformkey.currentState!.validate()) {
                          businessformkey.currentState!.save();
                        }
                      },
                      child: const Text("Save"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        businessformkey.currentState!.reset();
                        setState(() {
                          Global.business_name = '';
                          Global.business_email = '';
                          Global.business_phone = '';
                          Global.business_address = '';
                          Global.business_country = '';
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
