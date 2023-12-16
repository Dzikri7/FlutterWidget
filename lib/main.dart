import 'package:flutter/material.dart';
import 'package:tugas_praktikum_form/ui/DataMahasiswa.dart';
import 'package:tugas_praktikum_form/ui/MahasiswaForm.dart';
import 'package:tugas_praktikum_form/bottomnav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Digital Kampus",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: BottomNav(),
    );
  }
}