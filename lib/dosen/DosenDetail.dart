import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'DataDosen.dart';

class DosenDetail extends StatefulWidget {
  final String? Nidn;
  final String? NamaDosen;
  final String? Alamat;

  const DosenDetail({Key? key, this.Nidn, this.NamaDosen, this.Alamat})
      : super(key: key);

  @override
  _DosenDetailState createState() => _DosenDetailState();
}

class _DosenDetailState extends State<DosenDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Detail Data Dosen'),
        backgroundColor: Color.fromARGB(123, 235, 30, 183),
        centerTitle: true,
      ),

      body: Center (child: Column(
        children: [
          Text("N I D N : ${widget.Nidn}",
            style: const TextStyle(fontSize: 20.0),),

          Text("Nama Dosen : ${widget.NamaDosen}",
            style: const TextStyle(fontSize: 25.0),),

          Text("Alamat : ${widget.Alamat}",
            style: const TextStyle(fontSize: 20.0),),
        ],
      ),
      ),
    );
  }
}