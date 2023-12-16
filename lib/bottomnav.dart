import 'package:flutter/material.dart';
import 'dosen/DataDosen.dart';
import 'dosen/DosenDetail.dart';
import 'dosen/DosenForm.dart';
import 'matakuliah/DataMataKuliah.dart';
import 'matakuliah/MataKuliahDetail.dart';
import 'matakuliah/MataKuliahForm.dart';
import 'ruangan/DataRuangan.dart';
import 'ruangan/RuanganDetail.dart';
import 'ruangan/RuanganForm.dart';
import 'ui/DataMahasiswa.dart';
import 'ui/MahasiswaDetail.dart';
import 'ui/MahasiswaForm.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  // Halaman-halaman yang akan ditampilkan
  final List<Widget> _pages = [
    DataDosen(),
    DataRuangan(),
    DataMahasiswa(),
    DataMataKuliah(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Universitas Logistik dan Bisnis Internasional'),
          backgroundColor: Colors.red,
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            backgroundColor: Colors.green,
            selectedItemColor: Colors.red,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 122, 150, 69),
                icon: Icon(Icons.person_pin_rounded),
                label: 'Data Dosen',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 180, 181, 178),
                icon: Icon(Icons.business),
                label: 'Data Ruangan',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 116, 11, 182),
                icon: Icon(Icons.school),
                label: 'Data Mahasiswa',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 114, 208, 239),
                icon: Icon(Icons.pages),
                label: 'Data MataKuliah',
              ),
            ],
            ),
        );
    }
}

void main() {
  runApp(MaterialApp(
    home: BottomNav(),
  ));
}