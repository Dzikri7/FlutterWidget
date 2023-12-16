import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'MataKuliahForm.dart';
import 'package:tugas_praktikum_form/bottomnav.dart';

class DataMataKuliah extends StatefulWidget {
  const DataMataKuliah({Key? key}) : super(key: key);

  @override
  _DataMataKuliahState createState() => _DataMataKuliahState();
}

class _DataMataKuliahState extends State<DataMataKuliah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data MataKuliah',
          style: TextStyle(
              color: Color.fromARGB(237, 162, 35, 137), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(17, 165, 77, 217),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MataKuliahForm(),
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
              title: Text('Kode MataKuliah : 10226-14-21-03'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama MataKuliah: Pemrograman IV'),
                  Text('SKS: 4 SKS'),
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Kode MataKuliah : 10232-14-21-03'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama MataKuliah: SAP Advanced'),
                  Text('SKS: 3 SKS'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}