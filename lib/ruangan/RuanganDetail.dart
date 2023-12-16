import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'DataRuangan.dart';

class RuanganDetail extends StatefulWidget {
  final String? KodeRuangan;
  final String? NamaRuangan;
  final String? Kapasitas;

  const RuanganDetail({Key? key, this.KodeRuangan, this.NamaRuangan, this.Kapasitas})
      : super(key: key);

  @override
  _RuanganDetailState createState() => _RuanganDetailState();
}

class _RuanganDetailState extends State<RuanganDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Detail Data Ruangan'),
        backgroundColor: Color.fromARGB(123, 235, 30, 183),
        centerTitle: true,
      ),

      body: Center (child: Column(
        children: [
          Text("Kode Ruangan : ${widget.KodeRuangan}",
            style: const TextStyle(fontSize: 20.0),),

          Text("Nama Ruangan : ${widget.NamaRuangan}",
            style: const TextStyle(fontSize: 25.0),),

          Text("Kapasitas : ${widget.Kapasitas}",
            style: const TextStyle(fontSize: 20.0),),
        ],
      ),
      ),
    );
  }
}