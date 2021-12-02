import 'package:flutter/material.dart';
import 'package:goodhealth/screens/cart.dart';
import 'package:goodhealth/screens/home.dart';
import 'package:goodhealth/screens/moreinfo.dart';
import 'package:goodhealth/screens/profile.dart';

class HomeOption extends StatelessWidget {
  const HomeOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
    );
  }
}

class AccountOption extends StatelessWidget {
  const AccountOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileScreen(),
    );
  }
}

class CartOption extends StatelessWidget {
  const CartOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CartPage(),
      ),
    );
  }
}

class MoreOption extends StatelessWidget {
  const MoreOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MoreInfoPage(),
      ),
    );
  }
}
