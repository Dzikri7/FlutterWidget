import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'DosenForm.dart';
import 'package:tugas_praktikum_form/bottomnav.dart';

class DataDosen extends StatefulWidget {
  const DataDosen({Key? key}) : super(key: key);

  @override
  _DataDosenState createState() => _DataDosenState();
}

class _DataDosenState extends State<DataDosen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Dosen',
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
                  builder: (context) => const DosenForm(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('NIDN : 0420058801'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama : Roni Andarsyah, S.T., M.Kom., SFPC'),
                  Text('Alamat : Bandung, Jawa Barat'),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('NIDN : 0423127804'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama : Roni Habibi, S.Kom., M.T., SFPC'),
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