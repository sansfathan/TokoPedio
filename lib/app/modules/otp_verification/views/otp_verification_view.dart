import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:tokopedia/app/controllers/auth_controller_controller.dart';

import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  final authC = Get.put(AuthControllerController());

  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double lebar = MediaQuery.of(context).size.width;
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 107, 165, 212)),
        borderRadius: BorderRadius.circular(20),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );
    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
        body: Container(
            child: Container(
      padding: EdgeInsets.fromLTRB(10, 50, 30, 20),
      // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: tinggi * 0.09,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Veryfication",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "OTP HAS BLA-BLA-BLA",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 200,
          margin: EdgeInsets.only(
            top: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Pinput(
                  onSubmitted: (pin) => authC.checkOTP(pin),
                  length: 6,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  // ignore: avoid_print
                  onCompleted: (pin) => authC.checkOTP(pin),
                ),
              )
            ],
          ),
        )
      ]),
    )));
  }
}
