import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/background.png"),
          Container(
            width: width / 1.3,
            child: Text(
              "The only Accountability app you need",
              style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),
            ),

          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Container(
              width: width,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0), // Set rounded corner radius
                  border: Border.all(
                    color: Colors.black, // Set border color
                    width: 2.0, // Set border width
                  ),
                ),
                child:Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Sign in with Email",
                      style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w700),
                    ),
                  ),
                ), // Your child widget goes here
            ),
          ),
          Row(
            children: [
              Padding
                (
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: width/2.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0), // Set rounded corner radius
                    border: Border.all(
                      color: Colors.grey, // Set border color
                      width: 2.0, // Set border width
                    ),
                  ),
                  child:Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "GoogleID",
                        style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w700),
                      ),
                    ),
                  ), // Your child widget goes here
                ),
              ),
              Container(
                width: width/2.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0), // Set rounded corner radius
                  border: Border.all(
                    color: Colors.grey, // Set border color
                    width: 2.0, // Set border width
                  ),
                ),
                child:Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "AppleID",
                      style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w700),
                    ),
                  ),
                ), // Your child widget goes here
              ),
            ],
          ),
          Padding(
            padding:EdgeInsets.only(top: 10),
            child: Text("By continuing you agress to term and condition",style: TextStyle(color: Colors.grey),),
          )

        ],
      ),
    );
  }
}
