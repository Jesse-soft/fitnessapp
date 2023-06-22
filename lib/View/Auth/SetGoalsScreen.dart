import 'package:fitnessapp/View/Auth/PersonalInfoScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SetGoalScreen extends StatefulWidget {
  const SetGoalScreen({Key? key}) : super(key: key);

  @override
  State<SetGoalScreen> createState() => _SetGoalScreenState();
}

class _SetGoalScreenState extends State<SetGoalScreen> {
  TextEditingController name = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Set Your First Goal",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70, left: 50, right: 50),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: name,
                    cursorColor: Colors.black12,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintText: "Enter Your Goal",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      fillColor: Colors.grey.shade500,
                      filled: true,
                      errorBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GoalText(
                              decreas: "asdf",
                            )));
                  },
                  child: Container(
                    width: width / 1.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          30.0), // Set rounded corner radius
                      border: Border.all(
                        color: Colors.grey, // Set border color
                        width: 2.0, // Set border width
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Loss 50lbs",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ), // Your child widget goes here
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: width / 1.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        30.0), // Set rounded corner radius
                    border: Border.all(
                      color: Colors.grey, // Set border color
                      width: 2.0, // Set border width
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Run 2 miles each day",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ), // Your child widget goes here
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: width / 1.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        30.0), // Set rounded corner radius
                    border: Border.all(
                      color: Colors.grey, // Set border color
                      width: 2.0, // Set border width
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Eat Healthy",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ), // Your child widget goes here
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GoalText extends StatefulWidget {
  String? decreas;
  GoalText({Key? key, required this.decreas}) : super(key: key);

  @override
  State<GoalText> createState() => _GoalTextState();
}

class _GoalTextState extends State<GoalText> {
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => PersonalInfoScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Lets decrease 50lbs together",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
