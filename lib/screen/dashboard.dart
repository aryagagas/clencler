import 'package:ClencleR/fragments/historyscreen.dart';
import 'package:ClencleR/fragments/profilescreen.dart';
import 'package:ClencleR/theme.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:ClencleR/fragments/homescreen.dart';

Future<String?> getApiResponse() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('api_response');
}

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int selectedIndex = 0;
  String? apiResponse;

  @override
  void initState() {
    super.initState();
    fetchData();
    setStatusBarColor(Colors.transparent);
  }

  Future<void> fetchData() async {
    String? response = await getApiResponse();
    setState(() {
      apiResponse = response;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      print(apiResponse);
    });
  }

  Widget getFragment() {
    if (selectedIndex == 0) {
      return const HomeScreen();
    } else if (selectedIndex == 1) {
      return const HistoryScreen();
    } else if (selectedIndex == 2) {
      return const ProfileScreen();
    }
    return const HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.birumuda,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            "ClencleR",
            style: TextStyle(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.center,
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
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
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
          onTap: _onItemTapped,
          currentIndex: selectedIndex,
        ),
      ),
    );
  }
}
