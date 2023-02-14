// ignore_for_file: unused_import, unused_local_variable

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

class AuthControllerController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> streamAuthStatus() => auth.authStateChanges();
  String codeVerification = "";

  login(String emailAddress, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      // log("===================");
      // log(credential.toString());
      Get.offAllNamed(Routes.HOME_ADMIN);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Get.defaultDialog(
            title: "perhatian", middleText: "user tidak di temukan");
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.defaultDialog(
            title: "perhatian",
            middleText: "password salah silahkan isi dengan benar!");
      }
    }
  }

  logOut() {
    Get.defaultDialog(
        title: "yakin Log Out?",
        middleText: "Log Out bro",
        confirm: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: bgRed),
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            Get.offAndToNamed(Routes.SPLASH_SCREEN);
            print("berhasil Log Out");
          },
          child: Text("yes"),
        ),
        cancel: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: bgColeb5),
          onPressed: () => Get.back(),
          child: Text("No"),
        ));
  }

  resetPassword(String email) async {
    try {
      final credential = await auth.sendPasswordResetEmail(email: email);
      Get.toNamed(Routes.EMAIL_CHECK);
    } on FirebaseAuthException catch (e) {
      Get.defaultDialog(title: "Alert", middleText: "Gagal reset password");
      print(e);
    }
  }

  signUp(String emailAddress, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      credential.user?.sendEmailVerification();
      Get.offAllNamed(Routes.EMAIL_CHECK);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Get.defaultDialog(
            title: "perhatian",
            middleText:
                "email anda sudah di pakai silahkan isi dengan email yg lain");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    Get.offAllNamed(Routes.HOME_ADMIN);
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  verifyPhone(String nomor) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+62${nomor}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) => {
                if (value.user != null) {Get.toNamed(Routes.HOME)}
              });
        },
        verificationFailed: (FirebaseAuthException e) {
          Get.defaultDialog(
              title: 'Alert', middleText: 'gagal mengirim pesan verify');
        },
        codeSent: (String verificationId, int? resendToken) {
          codeVerification = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          codeVerification = verificationId;
        },
        timeout: Duration(seconds: 60));
    Get.toNamed(Routes.OTP_VERIFICATION, parameters: {"phone": nomor});
  }

  checkOTP(String sms) async {
    try {
      await auth
          .signInWithCredential(PhoneAuthProvider.credential(
              verificationId: codeVerification, smsCode: sms))
          .then((value) {
        if (value.user != null) {
          Get.toNamed(Routes.HOME);
        }
      });
    } catch (e) {
      Get.defaultDialog(
          title: "Alert", middleText: "kode verifikasi salah mas bro");
    }
  }
}
