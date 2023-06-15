import 'package:ClencleR/theme.dart';
import 'package:flutter/material.dart';

class HistoryDetailScreen extends StatelessWidget {
  final History history;

  const HistoryDetailScreen({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(121, 255, 248, 0.863),
        iconTheme: const IconThemeData(color: Colors.black),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        title: Text(history.title,
            style: const TextStyle(color: Colors.black, fontSize: 18)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              bottom: 16.0, left: 20.0, right: 16.0, top: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  SizedBox(width: 8),
                  Text(
                    "Keterangan history",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.access_time, color: Colors.black),
                  SizedBox(width: 8),
                  Text(
                    'Waktu',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 8),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            history.duration,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.place, color: Colors.black),
                  SizedBox(width: 8),
                  Text(
                    'Lokasi Pemesanan',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 8),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            history.location,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.attach_money, color: Colors.black),
                  SizedBox(width: 8),
                  Text(
                    'Biaya',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            history.biaya,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  SizedBox(width: 32),
                  Text(
                    'Rincian:',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 8),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${history.kategori1}'
                            ' (${history.biaya1} x 3)',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${history.kategori2}'
                            ' (${history.biaya2} x 2)',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${history.kategori3}' ' (${history.biaya3})',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${history.kategori4}' ' (${history.biaya4})',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${history.kategori5}' ' (${history.biaya5})',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${history.kategori6}' ' (${history.biaya6})',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${history.kategori7}' ' (${history.biaya7})',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class History {
  final String title;
  final String duration;
  final String location;
  final String kategori;
  final String biaya;
  final String kategori1;
  final String biaya1;
  final String kategori2;
  final String biaya2;
  final String kategori3;
  final String biaya3;
  final String kategori4;
  final String biaya4;
  final String kategori5;
  final String biaya5;
  final String kategori6;
  final String biaya6;
  final String kategori7;
  final String biaya7;

  History({
    required this.title,
    required this.duration,
    required this.location,
    required this.kategori,
    required this.biaya,
    required this.kategori1,
    required this.biaya1,
    required this.kategori2,
    required this.biaya2,
    required this.kategori3,
    required this.biaya3,
    required this.kategori4,
    required this.biaya4,
    required this.kategori5,
    required this.biaya5,
    required this.kategori6,
    required this.biaya6,
    required this.kategori7,
    required this.biaya7,
  });
}
