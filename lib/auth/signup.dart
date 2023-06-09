import 'package:ClencleR/auth/otp.dart';
import 'package:ClencleR/auth/signin.dart';
import 'package:ClencleR/screen/dashboard.dart';
import 'package:ClencleR/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // bool agree = false;

  // // This function is triggered when the button is clicked
  // void _doSomething() {
  //   Navigator.push(context, MaterialPageRoute(builder: (context)=> OTP_Verification()));
  // }

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  Future<void> signUp(String full_name, String email, String password, String phone_number, String address, String location) async {
    var url = Uri.parse('http://192.168.5.9:8000/api/mitra/register');

    try {
      var response = await http.post(
        url,
        body: {
          'full_name': full_name,
          'email': email,
          'password': password,
          'phone_number': phone_number,
          'address': address,
          'location': location,
        },
      );

      if (response.statusCode == 200) {
        // Tangani respon berhasil di sini
        print('SignUp berhasil');
        print(response.body);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OTP_Verification()),
        );
      } else {
        // Tangani respon gagal di sini
        print('SignUp gagal');
        print(response.body);
      }
    } catch (e) {
      // Tangani kesalahan
      print('Terjadi kesalahan: $e');
    }
  }

  void _signUpPressed() {
    String full_name = _fullNameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String phone_number = _phoneNumberController.text;
    String address = _addressController.text;
    String location = _locationController.text;

    // Panggil fungsi signUp dengan email dan password yang diisi
    signUp(full_name, email, password, phone_number, address, location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar", style: TextStyle(color: Colors.black),),
        backgroundColor: AppColors.birumuda,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _fullNameController,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle(color: AppColors.grey),
                    hintText: "Enter your Full Name",
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: AppColors.deeppurple),
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
                    if (value == null || value
                        .trim()
                        .isEmpty) {
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
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: AppColors.grey),
                    hintText: "Enter your Email",
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: AppColors.deeppurple),
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
                    if (value == null || value
                        .trim()
                        .isEmpty) {
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
                    hintText: "Enter your Password",
                    prefixIcon: Icon(
                      Icons.lock_open_outlined,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: AppColors.deeppurple),
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
                    if (value == null || value
                        .trim()
                        .isEmpty) {
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
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(color: AppColors.grey),
                    hintText: "Re-enter Your password",
                    prefixIcon: Icon(
                      Icons.lock_open_outlined,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: AppColors.deeppurple),
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
                    if (value == null || value
                        .trim()
                        .isEmpty) {
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
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    labelStyle: TextStyle(color: AppColors.grey),
                    hintText: "Enter Your Phone Number",
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: AppColors.deeppurple),
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
                  // validator: (value) {
                  //   if (value == null || value
                  //       .trim()
                  //       .isEmpty) {
                  //     return 'Please enter your email address';
                  //   }
                  //   // Check if the entered email has the right format
                  //   if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  //     return 'Please enter a valid email address';
                  //   }
                  //   // Return null if the entered email is valid
                  //   return null;
                  // },
                ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _addressController,
                  decoration: InputDecoration(
                    labelText: "Address",
                    labelStyle: TextStyle(color: AppColors.grey),
                    hintText: "Enter Your Address",
                    prefixIcon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: AppColors.deeppurple),
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
                  // validator: (value) {
                  //   if (value == null || value
                  //       .trim()
                  //       .isEmpty) {
                  //     return 'Please enter your email address';
                  //   }
                  //   // Check if the entered email has the right format
                  //   if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  //     return 'Please enter a valid email address';
                  //   }
                  //   // Return null if the entered email is valid
                  //   return null;
                  // },
                ),

                SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _locationController,
                  decoration: InputDecoration(
                    labelText: "Location",
                    labelStyle: TextStyle(color: AppColors.grey),
                    hintText: "Enter Your Location",
                    prefixIcon: Icon(
                      Icons.maps_home_work,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: AppColors.deeppurple),
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
                  // validator: (value) {
                  //   if (value == null || value
                  //       .trim()
                  //       .isEmpty) {
                  //     return 'Please enter your email address';
                  //   }
                  //   // Check if the entered email has the right format
                  //   if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  //     return 'Please enter a valid email address';
                  //   }
                  //   // Return null if the entered email is valid
                  //   return null;
                  // },
                ),
                SizedBox(
                height: 20,
              ),
      
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  onPressed: _signUpPressed,
                  child: Text(
                    "Daftar Mitra",
                    style: TextStyle(color: Colors.white),
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
                      "Sudah Punya Akun? ",
                      style: TextStyle(color: Colors.grey),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: AppColors.deeppurple),),
                    ),
                  ],       
                ), 
              ),
              SizedBox(
                height: 60,
              ),
              
              ],
              
            ),
          ),
        ),
        
      ),
    );
  }
}

// import 'package:ClencleR/auth/otp.dart';
// import 'package:ClencleR/auth/signin.dart';
// import 'package:ClencleR/screen/dashboard.dart';
// import 'package:ClencleR/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _phoneNumberController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();
//   final TextEditingController _locationController = TextEditingController();

//   Future<void> registerUser() async {
//     var url = Uri.parse(
//         'http://192.168.5.9:8000/api/mitra/register'); // Ganti URL sesuai dengan endpoint yang Anda miliki di backend Laravel

//     var response = await http.post(url, body: {
//       'full_name': _nameController.text,
//       'email': _emailController.text,
//       'password': _passwordController.text,
//       'phone_number': _phoneNumberController.text,
//       'address': _addressController.text,
//       'location': _locationController.text,
//     });

//     if (response.statusCode == 200) {
//       // Berhasil mendaftar
//       print('Registrasi berhasil');
//       // Tambahkan logika untuk mengarahkan pengguna ke halaman setelah pendaftaran berhasil
//     } else {
//       // Gagal mendaftar
//       print('Registrasi gagal');
//     }
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _phoneNumberController.dispose();
//     _addressController.dispose();
//     _locationController.dispose();
//     super.dispose();
//   }

//   // This function is triggered when the button is clicked
//   void _doSomething() {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => OTP_Verification()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Daftar",
//           style: TextStyle(color: Colors.black),
//         ),
//         backgroundColor: AppColors.birumuda,
//         centerTitle: true,
//         iconTheme: IconThemeData(color: Colors.black),
//         elevation: 0,
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 25.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: "Full Name",
//                     labelStyle: TextStyle(color: AppColors.grey),
//                     hintText: "Enter your Full Name",
//                     prefixIcon: Icon(
//                       Icons.person_outline,
//                       color: Colors.black,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 1, color: Colors.black),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(width: 1, color: AppColors.deeppurple),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedErrorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                   ),
//                   validator: (value) {
//                     if (value == null || value.trim().isEmpty) {
//                       return 'Please enter your email address';
//                     }
//                     // Check if the entered email has the right format
//                     if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
//                       return 'Please enter a valid email address';
//                     }
//                     // Return null if the entered email is valid
//                     return null;
//                   },
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: "Email",
//                     labelStyle: TextStyle(color: AppColors.grey),
//                     hintText: "Enter your Email",
//                     prefixIcon: Icon(
//                       Icons.email_outlined,
//                       color: Colors.black,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 1, color: Colors.black),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(width: 1, color: AppColors.deeppurple),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedErrorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                   ),
//                   validator: (value) {
//                     if (value == null || value.trim().isEmpty) {
//                       return 'Please enter your email address';
//                     }
//                     // Check if the entered email has the right format
//                     if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
//                       return 'Please enter a valid email address';
//                     }
//                     // Return null if the entered email is valid
//                     return null;
//                   },
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: "Password",
//                     labelStyle: TextStyle(color: AppColors.grey),
//                     hintText: "Enter your Password",
//                     prefixIcon: Icon(
//                       Icons.lock_open_outlined,
//                       color: Colors.black,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 1, color: Colors.black),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(width: 1, color: AppColors.deeppurple),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedErrorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                   ),
//                   validator: (value) {
//                     if (value == null || value.trim().isEmpty) {
//                       return 'Please enter your email address';
//                     }
//                     // Check if the entered email has the right format
//                     if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
//                       return 'Please enter a valid email address';
//                     }
//                     // Return null if the entered email is valid
//                     return null;
//                   },
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: "Confirm Password",
//                     labelStyle: TextStyle(color: AppColors.grey),
//                     hintText: "Re-enter Your password",
//                     prefixIcon: Icon(
//                       Icons.lock_open_outlined,
//                       color: Colors.black,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 1, color: Colors.black),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(width: 1, color: AppColors.deeppurple),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedErrorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                   ),
//                   validator: (value) {
//                     if (value == null || value.trim().isEmpty) {
//                       return 'Please enter your email address';
//                     }
//                     // Check if the entered email has the right format
//                     if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
//                       return 'Please enter a valid email address';
//                     }
//                     // Return null if the entered email is valid
//                     return null;
//                   },
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: "Phone Number",
//                     labelStyle: TextStyle(color: AppColors.grey),
//                     hintText: "Enter Your Phone Number",
//                     prefixIcon: Icon(
//                       Icons.phone,
//                       color: Colors.black,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 1, color: Colors.black),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(width: 1, color: AppColors.deeppurple),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedErrorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                   ),
//                   // validator: (value) {
//                   //   if (value == null || value
//                   //       .trim()
//                   //       .isEmpty) {
//                   //     return 'Please enter your email address';
//                   //   }
//                   //   // Check if the entered email has the right format
//                   //   if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
//                   //     return 'Please enter a valid email address';
//                   //   }
//                   //   // Return null if the entered email is valid
//                   //   return null;
//                   // },
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: "Address",
//                     labelStyle: TextStyle(color: AppColors.grey),
//                     hintText: "Enter Your Address",
//                     prefixIcon: Icon(
//                       Icons.home,
//                       color: Colors.black,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 1, color: Colors.black),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(width: 1, color: AppColors.deeppurple),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedErrorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                   ),
//                   // validator: (value) {
//                   //   if (value == null || value
//                   //       .trim()
//                   //       .isEmpty) {
//                   //     return 'Please enter your email address';
//                   //   }
//                   //   // Check if the entered email has the right format
//                   //   if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
//                   //     return 'Please enter a valid email address';
//                   //   }
//                   //   // Return null if the entered email is valid
//                   //   return null;
//                   // },
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: "Location",
//                     labelStyle: TextStyle(color: AppColors.grey),
//                     hintText: "Enter Your Location",
//                     prefixIcon: Icon(
//                       Icons.maps_home_work,
//                       color: Colors.black,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 1, color: Colors.black),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(width: 1, color: AppColors.deeppurple),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     focusedErrorBorder: OutlineInputBorder(
//                       borderSide:
//                           const BorderSide(width: 1, color: Colors.redAccent),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                   ),
//                   // validator: (value) {
//                   //   if (value == null || value
//                   //       .trim()
//                   //       .isEmpty) {
//                   //     return 'Please enter your email address';
//                   //   }
//                   //   // Check if the entered email has the right format
//                   //   if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
//                   //     return 'Please enter a valid email address';
//                   //   }
//                   //   // Return null if the entered email is valid
//                   //   return null;
//                   // },
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 SizedBox(
//                   width: 500,
//                   height: 50,
//                   child: ElevatedButton(
//                     onPressed: registerUser,
//                     child: Text(
//                       "Daftar Mitra",
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       primary: AppColors.birumuda,
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(50),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Center(
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Sudah Punya Akun? ",
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => SignIn()));
//                         },
//                         child: Text(
//                           "Login",
//                           style: TextStyle(color: AppColors.deeppurple),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 60,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
