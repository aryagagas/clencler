import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ClencleR/screen/dashboard.dart';
import 'package:ClencleR/auth/forgot.dart';
import 'package:ClencleR/auth/signup.dart';

import '../Theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> loginUser(String email, String password) async {
    var url = Uri.parse('http://192.168.5.9:8000/api/mitra/login');

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

        // Pindah ke halaman dashboard setelah berhasil login
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DashBoard()),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: AppColors.birumuda,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: AssetImage("assets/Images/logoo.png"),
                  height: 200,
                ),
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Nomor HP atau Email",
                  labelStyle: TextStyle(color: AppColors.grey),
                  hintText: "Masukkan No. HP atau Email",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: AppColors.deeppurple),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.redAccent),
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
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: AppColors.grey),
                  hintText: "Masukkan Password",
                  prefixIcon: Icon(
                    Icons.lock_open_outlined,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: AppColors.deeppurple),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.redAccent),
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
              SizedBox(
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
                  child: Text(
                    "Login",
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
              SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum Punya Akun? ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text(
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
