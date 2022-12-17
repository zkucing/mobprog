import 'package:flutter/material.dart';

class Cari extends StatefulWidget {
  const Cari({super.key});

  @override
  State<Cari> createState() => _CariState();
}

class _CariState extends State<Cari> {
  TextEditingController namaController =
      TextEditingController(text: "Muhammad Zidane Dharmawan");
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text("Cari Karyawan"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cari Karyawan",
                    style: TextStyle(fontSize: 24),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cari Karyawan :"),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          readOnly: true,
                          controller: namaController,
                          decoration: const InputDecoration(
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.search),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1.0, color: Colors.black),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _textField("Nama", "Muhammad Zidane Dharmawan"),
                        _textField("NIP", "00013"),
                        _textField("NIK", "6472041308000003"),
                        _textField("Jenis Kelamin", "Laki-Laki"),
                        _textField("Tempat, Tanggal Lahir",
                            "Samarinda, 13 Agustus 2000"),
                        _textField("No Telepon", "085349444408"),
                        _textField("Alamat",
                            "Jalan Imam Bonjol Asrama Kodim Blok. 4B No. 54"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Edit Data Karyawan")),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 187, 0, 0)),
                              onPressed: () {},
                              child: Text(
                                "Hapus Data Karyawan",
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget _textField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label :",
          style: TextStyle(fontSize: 22),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
}
