import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:goodhealth/screens/login_registration/phone_number/otp_Auth_controller.dart';
import 'package:goodhealth/screens/login_registration/phone_number/phone_Auth_controller.dart';
import 'package:goodhealth/screens/mainscreen%20page/mainScreen.dart';

class OtpAuthentication extends StatefulWidget {
  const OtpAuthentication({Key, key}) : super(key: key);

  @override
  _OtpAuthenticationState createState() => _OtpAuthenticationState();
}

class _OtpAuthenticationState extends State<OtpAuthentication> {
  //* editing controller
  final TextEditingController otpController1 = new TextEditingController();
  final TextEditingController otpController2 = new TextEditingController();
  final TextEditingController otpController3 = new TextEditingController();
  final TextEditingController otpController4 = new TextEditingController();
  final TextEditingController otpController5 = new TextEditingController();
  final TextEditingController otpController6 = new TextEditingController();

  //* controller
  PhoneAuthController phoneAuthController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/freshfood.png',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Verification',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(
                            first: true,
                            last: false,
                            controller: otpController1),
                        _textFieldOTP(
                            first: false,
                            last: false,
                            controller: otpController2),
                        _textFieldOTP(
                            first: false,
                            last: false,
                            controller: otpController3),
                        _textFieldOTP(
                            first: false,
                            last: false,
                            controller: otpController4),
                        _textFieldOTP(
                            first: false,
                            last: false,
                            controller: otpController5),
                        _textFieldOTP(
                            first: false,
                            last: true,
                            controller: otpController6),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final int fullOTP = int.parse(otpController1.text +
                              otpController2.text +
                              otpController3.text +
                              otpController4.text +
                              otpController5.text +
                              otpController6.text);
                          OTPAuthController otpAuthController =
                              Get.put(OTPAuthController(
                            otp: fullOTP,
                            sessionId: phoneAuthController
                                .phoneSession['oTPSessionID'],
                          ));

                          login();
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Verify',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP(
      {required bool first,
      required bool last,
      required TextEditingController controller}) {
    return Container(
      height: 60,
      child: AspectRatio(
        aspectRatio: 0.8,
        child: TextField(
          controller: controller,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.blue),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}

login() async {
  OTPAuthController otpAuthController = Get.find();
  Fluttertoast.showToast(msg: "Verifing...");
  await Future.delayed(const Duration(seconds: 8), () {
    if (otpAuthController.otpSession['token'] != null) {
      Get.to(MainScreen());
      Fluttertoast.showToast(msg: "Successfully verified");
    } else {
      Fluttertoast.showToast(msg: "OTP verification failed");
      Get.back();
    }
  });
}
