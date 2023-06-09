import 'package:ClencleR/auth/changepass.dart';
import 'package:ClencleR/auth/forgot.dart';
import 'package:ClencleR/auth/onboardscreen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.only(top: 08.0, left: 25, right: 25),
        physics: const BouncingScrollPhysics(),
        children: [
          userTile(),
          const Divider(
                  thickness: 1,
                  ),
          nomor(),
          alamat(),
          const SizedBox(height: 25,),
          const Divider(
                  thickness: 1,
                  ),
          const SizedBox(height: 25,),
          colorTiles(),
          const SizedBox(height: 25,),
          const Divider(
                  thickness: 1,
                  ),
          const SizedBox(height: 25,),
          abouts()

        ],
      ),
    );
  }

  Widget userTile(){
    return const ListTile(
      leading : CircleAvatar(
        backgroundImage: AssetImage("assets/Images/profile.png"),
      ),
      title: Text( "Muhammad Abrar Bachren",
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      subtitle:Text( "abar@gmail.com",
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget nomor(){
    return const ListTile(
      title: Text( "Nomor Telepon",
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      subtitle:Text( "08767676",
        style: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget alamat(){
    return const ListTile(
      title: Text( "Alamat",
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      subtitle:Text( "Kota Bogor",
        style: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

   Widget colorTiles(){
    return Column(
      children: [
        ubah(Icons.lock, Colors.black, "Ubah Kata Sandi"),
        const SizedBox(height: 15,),
        keluar(Icons.logout, Colors.black, "Keluar Dari Akun"),
      ],
    );
   }

   Widget ubah(IconData icon, Color color, String text){
    return ListTile(
      leading: Container(
        child: Icon(icon,color: color),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: color.withOpacity(0.09),
          borderRadius: BorderRadius.circular(18)
        ),
      ),
      title: Text(text,
       style: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: IconButton(
        iconSize: 14,
        icon: const Icon(Icons.arrow_forward_ios, color: Colors.black,),
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => ChangePassword()));
          }
          ),
    );
   }

   Widget keluar(IconData icon, Color color, String text){
    return ListTile(
      leading: Container(
        child: Icon(icon,color: color),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: color.withOpacity(0.09),
          borderRadius: BorderRadius.circular(18)
        ),
      ),
      title: Text(text,
       style: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: IconButton(
        iconSize: 14,
        icon: const Icon(Icons.arrow_forward_ios, color: Colors.black,),
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => OnBoardScreen()));
          }
          ),
    );
   }

   Widget abouts(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("About Us",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        ),
        about("Tentang ClencleR"),
        const Divider(thickness: 1,),
        about("Hubungi Kami"),
        const Divider(thickness: 1,)
      ],
    );
   }


   Widget about(String text){
    return ListTile(
      title: Text(text,
       style: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size:20),
    );
   }
}
