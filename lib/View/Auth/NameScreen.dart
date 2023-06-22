import 'package:fitnessapp/View/Auth/GoalScreens.dart';
import 'package:fitnessapp/View/Auth/SetGoalsScreen.dart';
import 'package:flutter/material.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  TextEditingController name=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Good to here",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                child: Text(
                  "What's your name?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 70,left: 50,right: 50),
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
                    hintText: "Enter Name",
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
              padding: EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: (){
                  if(name.text.length!=0){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShowName(name: name.text,)));
                  }

                },
                child: Container(
                  child: Text(
                    "Next ->",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShowName extends StatefulWidget {
  String? name;
  ShowName({Key? key,required this.name}) : super(key: key);

  @override
  State<ShowName> createState() => _ShowNameState();
}

class _ShowNameState extends State<ShowName> {
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => GoalScreen()));
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
              Padding(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Container(
                  child: Text(
                    "Hi ${this.widget.name}, pleasure to meet you. i'll be you new coach",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

