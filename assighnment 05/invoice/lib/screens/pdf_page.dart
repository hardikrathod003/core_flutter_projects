import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import '../Global.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:open_file/open_file.dart';

class Pdf_page extends StatefulWidget {
  const Pdf_page({Key? key}) : super(key: key);
  @override
  State<Pdf_page> createState() => _Pdf_pageState();
}

class _Pdf_pageState extends State<Pdf_page> {
  final GlobalKey<FormState> client = GlobalKey<FormState>();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final pdf = pw.Document();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text("Add client"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              if (client.currentState!.validate()) {
                client.currentState!.save();
                await getPdf(pdf);
                Directory? dir = await getExternalStorageDirectory();
                File file = File("${dir!.path}/${Global.client_name}.pdf");
                await file.writeAsBytes(await pdf.save());
                await OpenFile.open(file.path);
                Uint8List bytes = await pdf.save();
                await Printing.layoutPdf(onLayout: (format) => bytes);
              }
            },
            icon: Icon(Icons.picture_as_pdf),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "client Details",
          ),
          Container(
            padding: const EdgeInsets.all(25),
            child: Form(
              key: client,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "client Name...";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.client_name = val;
                    },
                    controller: nameController,
                    decoration: const InputDecoration(hintText: "client Name."),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "client Number...";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.client_phone = val;
                    },
                    keyboardType: TextInputType.number,
                    controller: numberController,
                    decoration:
                        const InputDecoration(hintText: "client Number."),
                  ),
                  TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "client email address";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.client_email = val;
                    },
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration:
                        const InputDecoration(hintText: "Example@gmail.com"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

getPdf(pdf) {
  pw.TextStyle mystyle1 = pw.TextStyle(
    color: PdfColors.black,
    fontWeight: pw.FontWeight.bold,
    fontSize: 14,
  );
  pw.TextStyle mystyle2 = const pw.TextStyle(
    color: PdfColors.black,
    fontSize: 14,
  );
  var amt = [];
  num total = 0;
  for (int i = 0; i < Global.itemList.length; i++) {
    amt.add(int.parse(Global.itemList[i].price) *
        int.parse(Global.itemList[i].qty));
  }
  for (int i = 0; i < amt.length; i++) {
    total = total + amt[i];
  }
  return pdf.addPage(
    pw.MultiPage(
      build: (context) => [
        pw.Column(
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text('Billed From :', style: mystyle1),
                    pw.SizedBox(height: 10),
                    pw.Text('${Global.business_name}', style: mystyle2),
                    pw.Container(
                      width: 200,
                      child: pw.Text('${Global.business_address}',
                          style: mystyle2),
                    ),
                    pw.Text('${Global.business_country},', style: mystyle2),
                  ],
                ),
                pw.Row(
                  children: [
                    pw.SizedBox(width: 10),
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          '${Global.business_name}',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            pw.SizedBox(height: 25),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              crossAxisAlignment: pw.CrossAxisAlignment.end,
              children: [
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text('Billed To :', style: mystyle1),
                    pw.SizedBox(height: 10),
                    pw.Text('${Global.client_name}', style: mystyle2),
                    pw.SizedBox(height: 10),
                    pw.Text('${Global.client_phone}', style: mystyle2),
                    pw.SizedBox(height: 10),
                    pw.Text('${Global.client_email}', style: mystyle2),
                  ],
                ),
                pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Invoice number:', style: mystyle1),
                        pw.Text('Date of Issue :', style: mystyle1),
                        pw.Text('Due Date :', style: mystyle1),
                        pw.Text('Amount :', style: mystyle1),
                      ],
                    ),
                    pw.SizedBox(width: 20),
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('${Global.invoice_number}', style: mystyle2),
                        pw.Text('${Global.invoice_date}', style: mystyle2),
                        pw.Text('${Global.invoice_due_date}', style: mystyle2),
                        pw.Text('${total}', style: mystyle2),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            pw.SizedBox(height: 20),
            pw.Container(
              height: 25,
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Expanded(
                    flex: 8,
                    child: pw.Text("Description"),
                  ),
                  pw.Expanded(
                    child: pw.Text("Qty."),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text("Unit Price"),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text("Amount"),
                  ),
                ],
              ),
            ),
            pw.Divider(thickness: 1),
            ...Global.itemList.map(
              (e) => pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Expanded(
                    flex: 8,
                    child: pw.Text(e.productName),
                  ),
                  pw.Expanded(
                    child: pw.Text(e.qty),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(e.price),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "${amt[Global.itemList.indexOf(e)]}",
                    ),
                  ),
                ],
              ),
            ),
            pw.Divider(thickness: 1),
            pw.Container(
              height: 25,
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Expanded(
                    flex: 8,
                    child: pw.Text("Total Amount"),
                  ),
                  pw.Expanded(
                    child: pw.Text(""),
                  ),
                  pw.Expanded(flex: 2, child: pw.Text("")),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text("Rs. $total"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
