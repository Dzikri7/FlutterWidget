import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'MahasiswaForm.dart';
import 'package:tugas_praktikum_form/bottomnav.dart';

class DataMahasiswa extends StatefulWidget {
  const DataMahasiswa({Key? key}) : super(key: key);

  @override
  _DataMahasiswaState createState() => _DataMahasiswaState();
}

class _DataMahasiswaState extends State<DataMahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Mahasiswa',
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
                  builder: (context) => const MahasiswaForm(),
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
              title: Text('NPM : 1214062'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama : Dzikri Izzatul Haq'),
                  Text('Alamat : Bandung, Jawa Barat'),
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('NPM : 1214073'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama : Adrian Bimo Hernawan Pratama'),
                  Text('Alamat : Bandung, Jawa Barat'),
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('NPM : 1214074'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama : Salman Akbar Hasballah'),
                  Text('Alamat : Bandung, Jawa Barat'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}