import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/auth_controller.dart';
import 'package:flutter_firebase/login_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "g.png",
      "t.png",
      "f.png"
    ];

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
                        "assets/img/signup.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.16,),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/img/profile.png"),
                  backgroundColor: Colors.grey[500],
                  
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      prefixIcon: Icon(Icons.email, color: Colors.deepOrangeAccent,),
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
              ],
            ),
          ),
          SizedBox(height: 70,),
          GestureDetector(
            // onTap: (){
            //   AuthController.instance.register(email, password)
            // },
            child: Container(
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
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ), //signup button
          SizedBox(height: w*0.08),
          RichText(text: TextSpan(
            // recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>LoginPage()),
            text: "Already have an account?",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey
            ),
            children: [
              TextSpan(
                text: " Sign In",
                style: TextStyle(
                  color: Colors.black
                ),
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(LoginPage())
              )
            ]
          )
          ),

          SizedBox(height: w*0.1),
          RichText(text: TextSpan(
              text: "Signup using the following",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20,
              ),
              // children: [
              //   TextSpan(
              //     text: " Create",
              //     style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //     ),)
              // ]
          ),),
          // SizedBox(height: w*0.08),
          Wrap(

            children: List<Widget>.generate(
              3,
                (index){
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        "assets/img/"+images[index]
                      ),
                    ),
                  ),
                );
                }
            ),
          )
        ],
      ),
    );
  }
}
