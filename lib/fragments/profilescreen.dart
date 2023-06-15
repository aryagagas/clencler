import 'dart:convert';
import 'package:ClencleR/auth/aboutus.dart';
import 'package:ClencleR/auth/changepass.dart';
import 'package:ClencleR/auth/hubungikami.dart';
import 'package:ClencleR/auth/onboardscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

Future<String?> getApiResponse() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('api_response');
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Map<String, dynamic>? dataProfile;
  Future<void> removeApiResponse() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('api_response');
  }

  String? apiResponse;

  @override
  void initState() {
    super.initState();
    fetchDataSP();
  }

  Future<void> fetchDataSP() async {
    String? response = await getApiResponse();
    setState(() {
      apiResponse = response;
      fetchData(apiResponse);
    });
  }

  Future<void> fetchData(String? mitraId) async {
    var url = Uri.parse('http://192.168.43.81:8000/api/mitra/profile/$mitraId');
    var response = await http.get(url);

    print(url);

    if (response.statusCode == 200) {
      print("berhasil");

      var jsonResponse = json.decode(response.body);
      setState(() {
        dataProfile = jsonResponse['body'];
      });
    } else {
      print('Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.only(top: 08.0, left: 25, right: 25),
        physics: const BouncingScrollPhysics(),
        children: [
          userTile(
            (dataProfile?['full_name']).toString(),
            (dataProfile?['email']).toString(),
          ),
          const Divider(
            thickness: 1,
          ),
          nomor(
            (dataProfile?['phone_number']).toString(),
          ),
          alamat(),
          const SizedBox(
            height: 25,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 25,
          ),
          colorTiles(),
          const SizedBox(
            height: 25,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 25,
          ),
          abouts()
        ],
      ),
    );
  }

  Widget userTile(String name, email) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/Images/profile.png"),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      subtitle: Text(
        email,
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget nomor(phone) {
    return ListTile(
      title: Text(
        "Nomor Telepon",
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      subtitle: Text(
        phone,
        style: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget alamat() {
    return const ListTile(
      title: Text(
        "Alamat",
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      subtitle: Text(
        "Kota Bogor",
        style: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget colorTiles() {
    return Column(
      children: [
        ubah(Icons.lock, Colors.black, "Ubah Kata Sandi"),
        const SizedBox(
          height: 15,
        ),
        keluar(Icons.logout, Colors.black, "Keluar Dari Akun"),
      ],
    );
  }

  Widget ubah(IconData icon, Color color, String text) {
    return ListTile(
      leading: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: color.withOpacity(0.09),
            borderRadius: BorderRadius.circular(18)),
        child: Icon(icon, color: color),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: IconButton(
          iconSize: 14,
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChangePassword()));
          }),
    );
  }

  Widget keluar(IconData icon, Color color, String text) {
    return ListTile(
      leading: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: color.withOpacity(0.09),
            borderRadius: BorderRadius.circular(18)),
        child: Icon(icon, color: color),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: IconButton(
          iconSize: 14,
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const OnBoardScreen()));
          }),
    );
  }

  Widget abouts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About Us",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        tentang("Tentang ClencleR"),
        const Divider(thickness: 1),
        hubungi("Hubungi Kami"),
        const Divider(thickness: 1),
      ],
    );
  }

  Widget tentang(String text) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: IconButton(
          iconSize: 14,
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AboutUs()));
          }),
    );
  }

  Widget hubungi(String text) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: IconButton(
          iconSize: 14,
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HubungiKami()));
          }),
    );
  }
}
