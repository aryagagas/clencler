import 'package:ClencleR/theme.dart';
import 'package:ClencleR/auth/signin.dart';
import 'package:ClencleR/auth/signup.dart';
import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage("assets/Images/logoo.png"),
                    height: 200,
                  ),
                ),
                const Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 17,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Mitra Profesional yang Terverifikasi & Terampil",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 17,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Harga Transparan & Kompetitif",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 17,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Dilindungi Garansi & Asuransi",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                SizedBox(
                  width: 500,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SignIn()));
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
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 500,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SignUp()));
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
                      "Daftar Mitra",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
