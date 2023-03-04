import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/signup_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/img/loginimg.png"
                ),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello", style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold
                ),),
                Text(
                  "Sign In to your account", style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                ),),
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                      blurRadius: 7,
                      offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.3)
                    )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      prefixIcon: Icon(Icons.mail_lock_outlined, color: Colors.deepOrangeAccent,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // for removing rectangular edges on the input field
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                      blurRadius: 7,
                      offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.3)
                    )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password_outlined, color: Colors.deepOrangeAccent,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // for removing rectangular edges on the input field
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container(),), // we use an empty container to push the text so we can get the text to the right side
                    Text(
                      "Sign In to your account", style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 70,),
          Container(
            width: w*0.5,
            height: h*0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/img/loginbtn.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: w*0.2),
          RichText(text: TextSpan(
            text: "Don\'t have an account?",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 20
            ),
            children: [
              TextSpan(
              text: " Create",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(SignUpPage())
              )
               ]
          ),
          ),
        ],
      ),
    );
  }
}
