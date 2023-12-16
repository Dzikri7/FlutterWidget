import 'dart:convert';
import 'RuanganDetail.dart';

import 'package:flutter/material.dart';

class RuanganForm extends StatefulWidget {
  const RuanganForm({Key? key}) : super(key: key);
  @override
  _RuanganFormState createState() => _RuanganFormState();
}

class _RuanganFormState extends State<RuanganForm> {
  @override
  final _KodeRuanganTextboxController = TextEditingController();
  final _NamaRuanganTextboxController = TextEditingController();
  final _KapasitasTextboxController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Data Ruangan'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _textboxKodeRuangan(),
            const SizedBox(height: 16.0),
            _textboxNamaRuangan(),
            const SizedBox(height: 16.0),
            _textboxKapasitas(),
            const SizedBox(height: 24.0),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxKodeRuangan() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Kode Ruangan",
        border: OutlineInputBorder(),
      ),
      controller: _KodeRuanganTextboxController,
    );
  }

  _textboxNamaRuangan() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama Ruangan",
        border: OutlineInputBorder(),
      ),
      controller: _NamaRuanganTextboxController,
    );
  }

  _textboxKapasitas() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Kapasitas",
        border: OutlineInputBorder(),
      ),
      controller: _KapasitasTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String KodeRuangan = _KodeRuanganTextboxController.text;
        String NamaRuangan = _NamaRuanganTextboxController.text;
        String Kapasitas = _KapasitasTextboxController.text;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RuanganDetail(
            KodeRuangan: KodeRuangan,
            NamaRuangan: NamaRuangan,
            Kapasitas: Kapasitas,
          ),
        ));
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, // background color
        onPrimary: Colors.white, // text color
      ),
      child: const Text('Simpan'),
    );
  }
}