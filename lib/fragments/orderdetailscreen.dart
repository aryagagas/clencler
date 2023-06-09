import 'package:ClencleR/Theme.dart';
import 'package:ClencleR/fragments/historyscreen.dart';
import 'package:ClencleR/fragments/homescreen.dart';
import 'package:ClencleR/screen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class OrderDetailsScreen extends StatelessWidget {
  final Order order;

  const OrderDetailsScreen({required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(121, 255, 248, 0.863),
        iconTheme: IconThemeData(color: Colors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        title: Text(order.title,
            style: TextStyle(color: Colors.black, fontSize: 18)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              bottom: 16.0, left: 20.0, right: 16.0, top: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 10),
              Row(
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
                  SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${order.duration}',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
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
                  SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${order.location}',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
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
                  SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${order.biaya}',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 10),
              Row(
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
                  SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${order.kategori1}' + ' (${order.biaya1} x 3)',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${order.kategori2}' + ' (${order.biaya2} x 2)',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${order.kategori3}' + ' (${order.biaya3})',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${order.kategori4}' + ' (${order.biaya4})',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${order.kategori5}' + ' (${order.biaya5})',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${order.kategori6}' + ' (${order.biaya6})',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 32),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-> ${order.kategori7}' + ' (${order.biaya7})',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashBoard()));
                  },
                  child: Text(
                    "Ambil Order",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.birumuda,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
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
