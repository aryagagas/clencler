import 'package:ClencleR/fragments/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';

Future<String?> getApiResponse() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('api_response');
}

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _editPassKey = GlobalKey<FormState>();

  String password = '';

  String? apiResponse;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    String? response = await getApiResponse();
    setState(() {
      apiResponse = response;
      // fetchData(apiResponse);
    });
  }

  void _editPassword(String? mitraId) async {
    final form = _editPassKey.currentState;
    if (form!.validate()) {
      form.save();
      var url = Uri.parse(
          'http://192.168.43.81:8000/api/mitra/profile/updatepass/$mitraId');
      var response = await http.post(url, body: {
        'password': password,
      });

      if (response.statusCode == 200) {
        // Permintaan berhasil
        print(response.body);
        print(apiResponse);
        // Lakukan logika setelah berhasil registrasi
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Password Anda sudah berhasil diubah!'),
          ),
        );
        // Misalnya, tampilkan pesan sukses atau navigasikan pengguna ke halaman login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileScreen(),
          ),
        );
      } else {
        // Permintaan gagal
        print('Error: ${response.statusCode}');
        print(response.body);
        print(apiResponse);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(121, 255, 248, 0.863),
        title: const Text(
          'Ubah Kata Sandi',
          style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
              top: 16.0, bottom: 16.0, left: 10.0, right: 10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _editPassKey,
              child: Column(
                children: [
                  const Text(
                    'Silakan masukkan Kata Sandi Baru untuk akun Anda.',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Inter',
                      fontSize: 12.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 24.0),
                  TextFormField(
                    autofocus: true,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Kata Sandi Lama',
                      labelStyle: const TextStyle(
                        color: grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(color: grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(color: grey),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Masukkan kata sandi lama';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      password = value!;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Kata Sandi Baru',
                      labelStyle: const TextStyle(
                        color: grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(color: grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(color: grey),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Masukkan kata sandi baru';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      password = value!;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 16.0,
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(121, 255, 248, 0.863),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      onPressed: () => _editPassword(apiResponse),
                      child: const Text(
                        'Ubah',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
