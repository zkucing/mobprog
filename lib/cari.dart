import 'package:flutter/material.dart';

class Cari extends StatefulWidget {
  const Cari({super.key});

  @override
  State<Cari> createState() => _CariState();
}

class _CariState extends State<Cari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cari Karyawan"),
      ),
    );
  }
}
