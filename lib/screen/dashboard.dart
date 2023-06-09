import 'package:ClencleR/fragments/historyscreen.dart';
import 'package:ClencleR/fragments/profilescreen.dart';
import 'package:ClencleR/theme.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:ClencleR/fragments/homescreen.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int selectedIndex = 0;

  Widget getFragment() {
    if (selectedIndex == 0) {
      return HomeScreen();
    } else if (selectedIndex == 1) {
      return HistoryScreen();
    } else if (selectedIndex == 2) {
      return ProfileScreen();
    } 
    return HomeScreen();
  }

  @override
  void initState() {
    setStatusBarColor(Colors.transparent);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClencleR", 
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(icon: new Icon(Icons.alarm, color: Colors.black), onPressed: () {  },),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.birumuda,
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
          ),
        ),
      ),

      body: getFragment(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(50), //New
              blurRadius: 25.0,
            )
          ],
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          color: AppColors.white,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.white,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/Icons/Ic_Home.png',
                      height: 24.66,
                      width: 24.66,
                      fit: BoxFit.cover,
                      color: AppColors.grey)
                  .paddingTop(12),
              label: '',
              activeIcon: Image.asset('assets/Icons/Ic_Home.png',
                      height: 24.66,
                      width: 24.66,
                      fit: BoxFit.cover,
                      color: AppColors.lightgreen)
                  .paddingTop(12),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/Icons/Ic_Bookmark.png',
                      height: 24.66,
                      width: 24.66,
                      fit: BoxFit.cover,
                      color: AppColors.grey)
                  .paddingTop(12),
              label: '',
              activeIcon: Image.asset('assets/Icons/Ic_Bookmark.png',
                      height: 24.66,
                      width: 24.66,
                      fit: BoxFit.cover,
                      color: AppColors.lightgreen)
                  .paddingTop(12),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/Icons/ic_profile.png',
                      height: 24.66,
                      width: 24.66,
                      fit: BoxFit.cover,
                      color: AppColors.grey)
                  .paddingTop(12),
              label: '',

              activeIcon: Image.asset('assets/Icons/ic_profile.png',
                      height: 24.66,
                      width: 24.66,
                      fit: BoxFit.cover,
                      color: AppColors.lightgreen)
                  .paddingTop(12),

            ),
          ],
          onTap: (val) {
            selectedIndex = val;
            setState(() {});
          },
          currentIndex: selectedIndex,
        ),
      ),
    );
  }
}
