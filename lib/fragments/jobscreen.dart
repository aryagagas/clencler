import 'package:flutter/material.dart';
import 'package:ClencleR/theme.dart';
// import 'package:ClencleR/models/jobsmodels.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 08.0, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(Icons.search),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "Search Jobs..",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.deeppurple,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage("assets/Icons/Ic_Settings.png"),
                            height: 40,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  "All Jobs",
                  style: TextStyle(
                      color: AppColors.deeppurple,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                // Jobs_Models(),
              ],
            ),
          ),
      ),
    
    );
  }
}
