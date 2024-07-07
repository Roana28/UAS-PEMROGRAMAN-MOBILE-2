import 'package:flutter/material.dart';
import 'package:flutter_application_1/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  ProdukFormState createState() => ProdukFormState();
}

class ProdukFormState extends State<ProdukForm> {
  final kodeProdukTextboxController = TextEditingController();
  final namaProdukTextboxController = TextEditingController();
  final hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          textboxKodeProduk(),
          textboxNamaProduk(),
          textboxHargaProduk(),
          tombolSimpan()
        ],
      )),
    );
  }

  textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: kodeProdukTextboxController,
    );
  }

  textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: namaProdukTextboxController,
    );
  }

  textboxHargaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga Produk"),
      controller: hargaProdukTextboxController,
    );
  }

  tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String kodeProduk = kodeProdukTextboxController.text;
          String namaProduk = namaProdukTextboxController.text;
          int harga = int.parse(
              hargaProdukTextboxController.text); //parsing dari String ke int
          // pindah ke halaman Produk Detail dan mengirim data
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProdukDetail(
                    kodeProduk: kodeProduk,
                    namaProduk: namaProduk,
                    harga: harga,
                  )));
        },
        child: const Text('Simpan'));
  }
}
