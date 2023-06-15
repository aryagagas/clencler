import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ClencleR/screen/dashboard.dart';
import 'package:ClencleR/auth/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _loginFormKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  Future<void> saveApiResponse(String response) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('api_response', response);
  }

  Future<void> loginUser(String email, String password) async {
    var url = Uri.parse('http://192.168.43.81:8000/api/mitra/login');

    try {
      var response = await http.post(
        url,
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        // Tangani respon berhasil di sini
        print('Login berhasil');
        print(response.body);
        var jsonResponse = json.decode(response.body);
        print(jsonResponse['body']['id']);
        jsonResponse['body']['id'];
        await saveApiResponse(jsonResponse['body']['id'].toString());

        // Pindah ke halaman dashboard setelah berhasil login
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DashBoard()),
        );
      } else {
        // Tangani respon gagal di sini
        print('Login gagal');
        print(response.body);
      }
    } catch (e) {
      // Tangani kesalahan
      print('Terjadi kesalahan: $e');
    }
  }

  void _loginPressed() {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Panggil fungsi loginUser dengan email dan password yang diisi
    loginUser(email, password);
  }

  void saveUserID(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('id', id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: AppColors.birumuda,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
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
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Nomor HP atau Email",
                  labelStyle: const TextStyle(color: AppColors.grey),
                  hintText: "Masukkan No. HP atau Email",
                  prefixIcon: const Icon(
                    Icons.email_outlined,
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
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your email address';
                  }
                  // Check if the entered email has the right format
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  // Return null if the entered email is valid
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: const TextStyle(color: AppColors.grey),
                  hintText: "Masukkan Password",
                  prefixIcon: const Icon(
                    Icons.lock_open_outlined,
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
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your password';
                  }
                  // You can add additional password validation rules here
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) => ForgotScreen()),
              //         );
              //       },
              //       child: Text(
              //         "Lupa Kata Sandi",
              //         style: TextStyle(
              //           color: Colors.black,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  onPressed: _loginPressed,
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
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Belum Punya Akun? ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      },
                      child: const Text(
                        " Sign Up",
                        style: TextStyle(color: AppColors.deeppurple),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // Row(children: <Widget>[
              //   Expanded(
              //     child: Divider(
              //       indent: 40,
              //       endIndent: 20,
              //     ),
              //   ),
              //   SizedBox(
              //     width: 20,
              //   ),
              //   Text("Or"),
              //   SizedBox(
              //     width: 20,
              //   ),
              //   Expanded(
              //     child: Divider(
              //       indent: 20,
              //       endIndent: 40,
              //     ),
              //   ),
              // ]),
              // SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     OutlinedButton.icon(
              //       label: Text('Google'),
              //       style: OutlinedButton.styleFrom(
              //         primary: Colors.redAccent,
              //         side: BorderSide(width: 1.0, color: Colors.redAccent.withAlpha(50)),
              //       ),
              //       icon: Icon(Icons.g_mobiledata),
              //       onPressed: () {
              //         print('Pressed');
              //       },
              //     ),
              //     SizedBox(
              //       height: 60,
              //     ),
              //   ],
            ],
          ),
        ),
      ),
    );
  }
}
