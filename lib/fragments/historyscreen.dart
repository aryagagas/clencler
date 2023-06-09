import 'package:ClencleR/theme.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

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
          padding: const EdgeInsets.only(top: 08.0, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(">Riwayat Penanganan<",
              style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 20,),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: AppColors.lightgreen.withAlpha(25),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                    ),
                                    ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: ListTile(
                          leading: Image(
                            image: AssetImage("assets/Images/dengan_alat.png"),
                            ),
                            title: Text( "Daily Cleaning - Dengan Alat",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              ),
                              ),
                              subtitle:Text( "Rincian Kategori",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic
                                ),
                                ),
                                trailing: Text("Rp. 162.000", textAlign: TextAlign.end,),
                                ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                                height: 100,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: AppColors.lightgreen.withAlpha(25),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                    ),
                                    ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: ListTile(
                          leading: Image(
                            image: AssetImage("assets/Images/tanpa_alat.png"),
                            ),
                            title: Text( "Daily Cleaning - Tanpa Alat",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              ),
                              ),
                              subtitle:Text( "Rincian Kategori",
                              style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w300,
                                ),
                                ),
                                trailing: Text("Rp. 112.000"),
                                ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                                height: 100,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: AppColors.lightgreen.withAlpha(25),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                    ),
                                    ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: ListTile(
                          leading: Image(
                            image: AssetImage("assets/Images/area.png"),
                            ),
                            title: Text( "Specific Area Cleaning",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              ),
                              ),
                              subtitle:Text( "Rincian Kategori",
                              style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w300,
                                ),
                                ),
                                trailing: Text("Rp. 60.000"),
                                ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                                height: 100,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: AppColors.lightgreen.withAlpha(25),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                    ),
                                    ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: ListTile(
                          leading: Image(
                            image: AssetImage("assets/Images/tanpa_alat.png"),
                            ),
                            title: Text( "Daily Cleaning - Tanpa Alat",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              ),
                              ),
                              subtitle:Text( "Rincian Kategori",
                              style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w300,
                                ),
                                ),
                                trailing: Text("Rp. 67.000"),
                                ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                                height: 100,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: AppColors.lightgreen.withAlpha(25),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                    ),
                                    ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: ListTile(
                          leading: Image(
                            image: AssetImage("assets/Images/dengan_alat.png"),
                            ),
                            title: Text( "Daily Cleaning - Dengan Alat",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              ),
                              ),
                              subtitle:Text( "Rincian Kategori",
                              style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w300,
                                ),
                                ),
                                trailing: Text("Rp. 222.000"),
                                ),
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