import 'package:ClencleR/Theme.dart';
import 'package:ClencleR/fragments/homescreen.dart';
import 'package:ClencleR/screen/dashboard.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  final Order order;

  const OrderDetailsScreen({super.key, required this.order});

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
        title: Text(order.title,
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
                    "Keterangan Order",
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
                            order.duration,
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
                            order.location,
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
                            order.biaya,
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
                            '-> ${order.kategori1}' ' (${order.biaya1} x 3)',
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
                            '-> ${order.kategori2}' ' (${order.biaya2} x 2)',
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
                            '-> ${order.kategori3}' ' (${order.biaya3})',
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
                            '-> ${order.kategori4}' ' (${order.biaya4})',
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
                            '-> ${order.kategori5}' ' (${order.biaya5})',
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
                            '-> ${order.kategori6}' ' (${order.biaya6})',
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
                            '-> ${order.kategori7}' ' (${order.biaya7})',
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
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashBoard()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.birumuda,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Ambil Order",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
