import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'DataMataKuliah.dart';

class MataKuliahDetail extends StatefulWidget {
  final String? KodeMataKuliah;
  final String? NamaMataKuliah;
  final String? SKS;

  const MataKuliahDetail({Key? key, this.KodeMataKuliah, this.NamaMataKuliah, this.SKS})
      : super(key: key);

  @override
  _MataKuliahDetailState createState() => _MataKuliahDetailState();
}

class _MataKuliahDetailState extends State<MataKuliahDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Detail Data MataKuliah'),
        backgroundColor: Color.fromARGB(123, 235, 30, 183),
        centerTitle: true,
      ),

      body: Center (child: Column(
        children: [
          Text("Kode MataKuliah : ${widget.KodeMataKuliah}",
            style: const TextStyle(fontSize: 20.0),),

          Text("Nama MataKuliah : ${widget.NamaMataKuliah}",
            style: const TextStyle(fontSize: 25.0),),

          Text("SKS : ${widget.SKS}",
            style: const TextStyle(fontSize: 20.0),),
        ],
      ),
      ),
    );
  }
}