import 'package:flutter/material.dart';

class Tambah extends StatefulWidget {
  const Tambah({super.key});

  @override
  State<Tambah> createState() => _TambahState();
}

class _TambahState extends State<Tambah> {
  TextEditingController namaController = TextEditingController();
  TextEditingController nipController = TextEditingController();
  TextEditingController nikController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController ttlController = TextEditingController();
  TextEditingController nohpController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tambah Karyawan"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tambah Karyawan",
                  style: TextStyle(fontSize: 24),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama :"),
                      SizedBox(
                        height: 4,
                      ),
                      TextField(
                        controller: namaController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NIP :"),
                      SizedBox(
                        height: 4,
                      ),
                      TextField(
                        controller: nipController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NIK :"),
                      SizedBox(
                        height: 4,
                      ),
                      TextField(
                        controller: nikController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jenis Kelamin :"),
                      SizedBox(
                        height: 4,
                      ),
                      TextField(
                        controller: genderController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tempat, Tanggal Lahir :"),
                      SizedBox(
                        height: 4,
                      ),
                      TextField(
                        controller: ttlController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("No Telepon :"),
                      SizedBox(
                        height: 4,
                      ),
                      TextField(
                        controller: nohpController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alamat :"),
                      SizedBox(
                        height: 4,
                      ),
                      TextField(
                        controller: alamatController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 75,
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: ElevatedButton(
                      child: const Text('Tambah Karyawan'),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Tambah Karyawan"),
                              content: Text("Apakah Data sudah benar ?"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text("Tambah Karyawan"),
                                            content: Text("Data Tersimpan"),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    Navigator.pop(context);
                                                    namaController.clear();
                                                    nipController.clear();
                                                    nikController.clear();
                                                    genderController.clear();
                                                    ttlController.clear();
                                                    nohpController.clear();
                                                    alamatController.clear();
                                                  },
                                                  child: Text("Oke")),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: Text("Iya")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Tidak")),
                              ],
                            );
                          },
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
