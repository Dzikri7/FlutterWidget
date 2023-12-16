import 'MahasiswaDetail.dart';
import 'package:flutter/material.dart';

class MahasiswaForm extends StatefulWidget {
  const MahasiswaForm({Key? key}) : super(key: key);
  @override
      _MahasiswaFormState createState() => _MahasiswaFormState();
}

class _MahasiswaFormState extends State<MahasiswaForm> {
  @override
  final _NamaLengkapTextboxController = TextEditingController();
  final _NpmTextboxController = TextEditingController();
  final _AlamatTextboxController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Data Mahasiswa'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _textboxNpm(),
            const SizedBox(height: 16.0),
            _textboxNamaLengkap(),
            const SizedBox(height: 16.0),
            _textboxAlamat(),
            const SizedBox(height: 24.0),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxNpm() {
    return TextField(
      decoration: InputDecoration(
        labelText: "N P M",
        border: OutlineInputBorder(),
      ),
      controller: _NpmTextboxController,
    );
  }

  _textboxNamaLengkap() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama Lengkap",
        border: OutlineInputBorder(),
      ),
      controller: _NamaLengkapTextboxController,
    );
  }

  _textboxAlamat() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Alamat",
        border: OutlineInputBorder(),
      ),
      controller: _AlamatTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String Npm = _NpmTextboxController.text;
        String NamaLengkap = _NamaLengkapTextboxController.text;
        String Alamat = _AlamatTextboxController.text;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MahasiswaDetail(
            Npm: Npm,
            NamaLengkap: NamaLengkap,
            Alamat: Alamat,
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