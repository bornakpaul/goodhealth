import 'package:flutter/material.dart';
import 'package:goodhealth/screens/profile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //! MediaQuery sizes
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    //! BUTTON
    final profileButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        minWidth: width,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProfileScreen()));
        },
        child: Text(
          "Profile",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Good Health"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: profileButton,
        ),
      ),
    );
  }
}
