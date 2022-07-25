import 'package:flutter/material.dart';
import 'package:theme_style/pages/home_page.dart';
import 'package:theme_style/pages/profile_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentPage = 0;
  double? deviceHeight, deviceWidth;
  late List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    pages = [
      HomePage(
        height: deviceHeight,
        width: deviceWidth,
      ),
      ProfilePage(
        height: deviceHeight,
        width: deviceWidth,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: deviceHeight! * 0.12,
        centerTitle: true,
        title: const Text("Theme Style"),
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavbar(
        currentPage: currentPage,
        pageChange: pageChange,
      ),
    );
  }

  void pageChange(int value) {
    setState(() {
      currentPage = value;
    });
  }
}

class BottomNavbar extends StatelessWidget {
  final int currentPage;
  final Function(int) pageChange;

  const BottomNavbar({
    Key? key,
    required this.pageChange,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPage,
      onTap: (value) {
        pageChange(value);
      },
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home,
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(
            Icons.account_box,
          ),
        ),
      ],
    );
  }
}
