import 'package:ClencleR/fragments/orderdetailscreen.dart';
import 'package:ClencleR/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = '';
  List<Order> filteredOrders = [];

  @override
  Widget build(BuildContext context) {
    filteredOrders = orders.where((order) {
      final titleLower = order.title.toLowerCase();
      final locationLower = order.location.toLowerCase();
      final searchLower = searchQuery.toLowerCase();
      return titleLower.contains(searchLower) ||
          locationLower.contains(searchLower);
    }).toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  labelStyle: const TextStyle(color: AppColors.grey),
                  hintText: "Ketik Order Disini",
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: AppColors.deeppurple),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Antrian Pesanan",
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
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: AppColors.lightgreen.withAlpha(25),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Specific Area Cleaning",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image.asset(
                            'assets/Icons/task.png',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                      const Divider(
                        indent: 5,
                        endIndent: 150,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.lock_clock),
                          SizedBox(width: 10),
                          Text("10:00 WIB"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Text("Cempaka Putih"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Row(
                children: [
                  Text(
                    "Order Tersedia",
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
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: filteredOrders.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: InkWell(
                      onTap: () {
                        // Navigasi ke halaman baru saat di klik
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderDetailsScreen(
                              order: filteredOrders[index],
                            ),
                          ),
                        );
                      },
                      child: OrderWidget(
                        title: filteredOrders[index].title,
                        duration: filteredOrders[index].duration,
                        location: filteredOrders[index].location,
                        biaya: '',
                        biaya1: '',
                        biaya2: '',
                        biaya3: '',
                        biaya4: '',
                        biaya5: '',
                        biaya6: '',
                        biaya7: '',
                        kategori: '',
                        kategori1: '',
                        kategori2: '',
                        kategori3: '',
                        kategori4: '',
                        kategori5: '',
                        kategori6: '',
                        kategori7: '',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Order {
  final String title;
  final String duration;
  final String location;
  final String biaya;
  final String biaya1;
  final String biaya2;
  final String biaya3;
  final String biaya4;
  final String biaya5;
  final String biaya6;
  final String biaya7;
  final String kategori;
  final String kategori1;
  final String kategori2;
  final String kategori3;
  final String kategori4;
  final String kategori5;
  final String kategori6;
  final String kategori7;

  Order({
    required this.title,
    required this.duration,
    required this.location,
    required this.biaya,
    required this.biaya1,
    required this.biaya2,
    required this.biaya3,
    required this.biaya4,
    required this.biaya5,
    required this.biaya6,
    required this.biaya7,
    required this.kategori,
    required this.kategori1,
    required this.kategori2,
    required this.kategori3,
    required this.kategori4,
    required this.kategori5,
    required this.kategori6,
    required this.kategori7,
  });
}

List<Order> orders = [
  Order(
    title: 'Daily Cleaning - Dengan Alat',
    duration: '12:00 WIB',
    location: 'Bogor',
    biaya: 'Rp. 162.000',
    biaya1: 'Rp. 15.000',
    biaya2: 'Rp. 15.000',
    biaya3: 'Rp. 12.000',
    biaya4: 'Rp. 20.000',
    biaya5: 'Rp. 20.000',
    biaya6: 'Rp. 20.000',
    biaya7: 'Rp. 15.000',
    kategori: 'Dengan Alat',
    kategori1: 'Kamar Mandi',
    kategori2: 'Kamar Tidur',
    kategori3: 'Dapur',
    kategori4: 'Ruang Keluarga',
    kategori5: 'Ruang Tamu',
    kategori6: 'Ruang makan',
    kategori7: 'Ruang Lain',
  ),
  Order(
    title: 'Daily Cleaning - Tanpa Alat',
    duration: '09:30 WIB',
    location: 'Jakarta',
    biaya: 'Rp. 112.000',
    biaya1: 'Rp. 10.000',
    biaya2: 'Rp. 10.000',
    biaya3: 'Rp. 7.000',
    biaya4: 'Rp. 15.000',
    biaya5: 'Rp. 15.000',
    biaya6: 'Rp. 15.000',
    biaya7: 'Rp. 10.000',
    kategori: 'Tanpa Alat',
    kategori1: 'Kamar Mandi',
    kategori2: 'Kamar Tidur',
    kategori3: 'Dapur',
    kategori4: 'Ruang Keluarga',
    kategori5: 'Ruang Tamu',
    kategori6: 'Ruang Makan',
    kategori7: 'Ruang lain',
  ),
  Order(
    title: 'Specific Area Cleaning',
    duration: '10:00 WIB',
    location: 'Cempaka Putih',
    biaya: 'Rp. 60.000',
    biaya1: 'Rp. 15.000',
    biaya2: '',
    biaya3: '',
    biaya4: '',
    biaya5: '',
    biaya6: '',
    biaya7: 'Rp. 15.000',
    kategori: 'Specific',
    kategori1: 'Kamar Mandi',
    kategori2: '',
    kategori3: '',
    kategori4: '',
    kategori5: '',
    kategori6: '',
    kategori7: 'Ruang Lain',
  ),
];

class OrderWidget extends StatelessWidget {
  final String title;
  final String duration;
  final String location;
  final String biaya;
  final String biaya1;
  final String biaya2;
  final String biaya3;
  final String biaya4;
  final String biaya5;
  final String biaya6;
  final String biaya7;
  final String kategori;
  final String kategori1;
  final String kategori2;
  final String kategori3;
  final String kategori4;
  final String kategori5;
  final String kategori6;
  final String kategori7;

  const OrderWidget({
    super.key,
    required this.title,
    required this.duration,
    required this.location,
    required this.biaya,
    required this.biaya1,
    required this.biaya2,
    required this.biaya3,
    required this.biaya4,
    required this.biaya5,
    required this.biaya6,
    required this.biaya7,
    required this.kategori,
    required this.kategori1,
    required this.kategori2,
    required this.kategori3,
    required this.kategori4,
    required this.kategori5,
    required this.kategori6,
    required this.kategori7,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        color: AppColors.lightgreen.withAlpha(25),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Image.asset(
                  'assets/Icons/task.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            const Divider(
              indent: 5,
              endIndent: 150,
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                const Icon(Icons.lock_clock),
                const SizedBox(width: 10),
                Text(duration),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.location_on),
                const SizedBox(width: 10),
                Text(location),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
