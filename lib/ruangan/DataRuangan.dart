import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'RuanganForm.dart';
import 'package:tugas_praktikum_form/bottomnav.dart';

class DataRuangan extends StatefulWidget {
  const DataRuangan({Key? key}) : super(key: key);

  @override
  _DataRuanganState createState() => _DataRuanganState();
}

class _DataRuanganState extends State<DataRuangan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Ruangan',
          style: TextStyle(
              color: Color.fromARGB(7, 155, 25, 233), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(225, 74, 143, 3),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RuanganForm(),
                ),
              );
            },
          ),
        ], // Corrected indentation here
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Kode Ruangan : Lab 315'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama Ruangan : Lab Komputer'),
                  Text('Kapasitas: 30 orang'),
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Kode Ruangan : 109'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama Ruangan : Kelas'),
                  Text('Kapasitas: 30 orang'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}