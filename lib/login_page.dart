import 'package:flutter/material.dart';


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
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
