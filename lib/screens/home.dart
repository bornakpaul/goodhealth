import 'package:flutter/material.dart';
import 'package:goodhealth/screens/profile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //! MediaQuery sizes
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          title: Text("Good Health"),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.transparent,
          )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Text("Home Screen"),
        ),
      ),
    );
  }
}
