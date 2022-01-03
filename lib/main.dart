import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodhealth/screens/login_registration/phone_number/phoneAuthentication.dart';
import 'package:goodhealth/screens/mainscreen%20page/mainScreen.dart';
import 'package:goodhealth/screens/mainscreen%20page/main_binding.dart';

//! Changed this to not encounter error of Firebase.initializeApp()
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Good Health',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => MainScreen(),
          binding: MainBinding(),
        ),
      ],
    );
  }
}
