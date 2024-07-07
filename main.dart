import 'package:flutter_application_1/column_widget.dart';
import 'package:flutter_application_1/produk_form.dart';
import 'package:flutter_application_1/produk_page.dart';
import 'package:flutter_application_1/row_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "uts pemrograman mobile",
      home: ProdukPage(),
    );
  }
}
