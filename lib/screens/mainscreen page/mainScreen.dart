import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodhealth/screens/account%20page/account.dart';
import 'package:goodhealth/screens/cart%20page/cart.dart';
import 'package:goodhealth/screens/home%20page/home.dart';
import 'package:goodhealth/screens/mainscreen%20page/main_controller.dart';
import 'package:goodhealth/screens/moreoptions%20page/moreoptions.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            Home(),
            AccountPage(),
            CartPage(),
            MoreOptionPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'More',
            ),
          ],
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
        ),
      );
    });
  }
}
