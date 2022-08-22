import 'package:flutter/material.dart';

class Build_option_page extends StatefulWidget {
  const Build_option_page({Key? key}) : super(key: key);

  @override
  State<Build_option_page> createState() => _Build_option_pageState();
}

class _Build_option_pageState extends State<Build_option_page> {
  List<Map<String, dynamic>> options = [
    {
      'id': "1",
      'icon': "assets/images/business_info.png",
      'name': "Business Info ",
      'route': "business_info",
    },
    {
      'id': "2",
      'icon': "assets/images/invoice_setting.png",
      'name': "Invoice Setting",
      'route': "invoice_setting",
    },
    {
      'id': "3",
      'icon': "assets/images/billing.png",
      'name': "Billing",
      'route': "billing",
    },
  ];

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        title: Text(
          "Invoice Workspace",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: _width,
              alignment: Alignment.center,
              child: Text(
                "Build Options",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              color: Colors.purple,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 12,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...options.map((option) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(option['route']);
                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                option['icon'],
                                height: 80,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                option['name'],
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 3,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
