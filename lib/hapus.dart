import 'package:flutter/material.dart';

class Hapus extends StatefulWidget {
  const Hapus({super.key});

  @override
  State<Hapus> createState() => _HapusState();
}

class _HapusState extends State<Hapus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hapus Karyawan"),
      ),
    );
  }
}
