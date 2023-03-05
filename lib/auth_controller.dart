import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_firebase/login_page.dart';
import 'package:flutter_firebase/welcome_page.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AuthController extends GetxController{
  //should be accessible from every page  create an instance of the class
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super .onReady();
    _user = Rx<User?>(auth.currentUser);
    // our user will be notified
    _user.bindStream(auth.userChanges());
    //process in the app
    ever(_user, _initialScreen);

  }

  _initialScreen(User? user){
    if(user==null){
      print("Login page");
      Get.offAll(()=>LoginPage());
    }
    else{
      Get.offAll(()=>WelcomePage());
    }
  }

  void register(String email, password){
    try{
      auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    catch(e){
      Get.snackbar("About User", "User message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Account creation failed",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(
              color: Colors.white
          ),
        )
      );
    }

  }

}