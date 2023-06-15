import 'package:ClencleR/fragments/historydetailscreen.dart';
import 'package:ClencleR/theme.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                ">Riwayat Penanganan<",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HistoryDetailScreen(
                              history: History(
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
                            ),
                          ),
                        );
                      },
                      child: HistoryWidget(
                        title: "Daily Cleaning - Dengan Alat",
                        image: "assets/Images/dengan_alat.png",
                        subtitle: "Rincian Kategori",
                        price: "Rp. 162.000",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HistoryDetailScreen(
                              history: History(
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
                            ),
                          ),
                        );
                      },
                      child: HistoryWidget(
                        title: "Daily Cleaning - Tanpa Alat",
                        image: "assets/Images/tanpa_alat.png",
                        subtitle: "Rincian Kategori",
                        price: "Rp. 112.000",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HistoryDetailScreen(
                              history: History(
                                title: 'Specific Area Cleaning',
                                duration: '10:00 WIB',
                                location: 'Cempaka Putih',
                                biaya: 'Rp. 60.000',
                                biaya1: 'Rp. 15.000',
                                biaya2: 'Rp. 0',
                                biaya3: 'Rp. 0',
                                biaya4: 'Rp. 0',
                                biaya5: 'Rp. 0',
                                biaya6: 'Rp. 0',
                                biaya7: 'Rp. 15.000',
                                kategori: 'Specific',
                                kategori1: 'Kamar Mandi',
                                kategori2: '-',
                                kategori3: '-',
                                kategori4: '-',
                                kategori5: '-',
                                kategori6: '-',
                                kategori7: 'Ruang Lain',
                              ),
                            ),
                          ),
                        );
                      },
                      child: HistoryWidget(
                        title: "Specific Area Cleaning",
                        image: "assets/Images/area.png",
                        subtitle: "Rincian Kategori",
                        price: "Rp. 60.000",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HistoryDetailScreen(
                              history: History(
                                title: 'Daily Cleaning - Tanpa Alat',
                                duration: '09:30 WIB',
                                location: 'Jakarta',
                                biaya: 'Rp. 67.000',
                                biaya1: 'Rp. 0',
                                biaya2: 'Rp. 0',
                                biaya3: 'Rp. 0',
                                biaya4: 'Rp. 0',
                                biaya5: 'Rp. 0',
                                biaya6: 'Rp. 0',
                                biaya7: 'Rp. 0',
                                kategori: 'Tanpa Alat',
                                kategori1: 'Kamar Mandi',
                                kategori2: 'Kamar Tidur',
                                kategori3: 'Dapur',
                                kategori4: 'Ruang Keluarga',
                                kategori5: 'Ruang Tamu',
                                kategori6: 'Ruang Makan',
                                kategori7: 'Ruang lain',
                              ),
                            ),
                          ),
                        );
                      },
                      child: HistoryWidget(
                        title: "Daily Cleaning - Tanpa Alat",
                        image: "assets/Images/tanpa_alat.png",
                        subtitle: "Rincian Kategori",
                        price: "Rp. 67.000",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HistoryDetailScreen(
                              history: History(
                                title: 'Daily Cleaning - Dengan Alat',
                                duration: '12:00 WIB',
                                location: 'Bogor',
                                biaya: 'Rp. 222.000',
                                biaya1: 'Rp. 0',
                                biaya2: 'Rp. 0',
                                biaya3: 'Rp. 0',
                                biaya4: 'Rp. 0',
                                biaya5: 'Rp. 0',
                                biaya6: 'Rp. 0',
                                biaya7: 'Rp. 0',
                                kategori: 'Dengan Alat',
                                kategori1: 'Kamar Mandi',
                                kategori2: 'Kamar Tidur',
                                kategori3: 'Dapur',
                                kategori4: 'Ruang Keluarga',
                                kategori5: 'Ruang Tamu',
                                kategori6: 'Ruang makan',
                                kategori7: 'Ruang Lain',
                              ),
                            ),
                          ),
                        );
                      },
                      child: HistoryWidget(
                        title: "Daily Cleaning - Dengan Alat",
                        image: "assets/Images/dengan_alat.png",
                        subtitle: "Rincian Kategori",
                        price: "Rp. 222.000",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryWidget extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;
  final String price;

  const HistoryWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
        color: AppColors.lightgreen.withAlpha(25),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ListTile(
          leading: Image.asset(image),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
            ),
          ),
          trailing: Text(price),
        ),
      ),
    );
  }
}
