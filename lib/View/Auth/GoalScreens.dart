import 'package:fitnessapp/View/Auth/SetGoalsScreen.dart';
import 'package:flutter/material.dart';
class GoalScreen extends StatefulWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  List<int> selected=[];
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
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  child: Text(
                    "What goal do you want to exceed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Padding
                      (
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            if(selected.contains(0)){
                              selected.remove(0);
                            }else{
                              selected.add(0);
                            }

                          });

                        },
                        child: Container(
                          width: width/2.5,
                          decoration: BoxDecoration(
                            color: selected.contains(0)?Colors.grey:Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0), // Set rounded corner radius
                            border: Border.all(
                              color: Colors.grey, // Set border color
                              width: 2.0, // Set border width
                            ),
                          ),
                          child:Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Text(
                                "Fitness",
                                style: TextStyle(color: Colors.white,fontSize: 22),
                              ),
                            ),
                          ), // Your child widget goes here
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          if(selected.contains(1)){
                            selected.remove(1);
                          }else{
                            selected.add(1);
                          }

                        });
                      },
                      child: Container(
                        width: width/2.5,
                        decoration: BoxDecoration(
                          color: selected.contains(1)?Colors.grey:Colors.transparent,
                          borderRadius: BorderRadius.circular(30.0), // Set rounded corner radius
                          border: Border.all(
                            color: Colors.grey, // Set border color
                            width: 2.0, // Set border width
                          ),
                        ),
                        child:Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              "Language",
                              style: TextStyle(color: Colors.white,fontSize: 22),
                            ),
                          ),
                        ), // Your child widget goes here
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding
                      (
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            if(selected.contains(2)){
                              selected.remove(2);
                            }else{
                              selected.add(2);
                            }

                          });
                        },
                        child: Container(
                          width: width/2.5,
                          decoration: BoxDecoration(
                            color: selected.contains(2)?Colors.grey:Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0), // Set rounded corner radius
                            border: Border.all(
                              color: Colors.grey, // Set border color
                              width: 2.0, // Set border width
                            ),
                          ),
                          child:Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Text(
                                "Reading",
                                style: TextStyle(color: Colors.white,fontSize: 22),
                              ),
                            ),
                          ), // Your child widget goes here
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          if(selected.contains(3)){
                            selected.remove(3);
                          }else{
                            selected.add(3);
                          }

                        });
                      },
                      child: Container(
                        width: width/2.5,
                        decoration: BoxDecoration(
                          color: selected.contains(3)?Colors.grey:Colors.transparent,
                          borderRadius: BorderRadius.circular(30.0), // Set rounded corner radius
                          border: Border.all(
                            color: Colors.grey, // Set border color
                            width: 2.0, // Set border width
                          ),
                        ),
                        child:Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              "New Skill",
                              style: TextStyle(color: Colors.white,fontSize: 22),
                            ),
                          ),
                        ), // Your child widget goes here
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding
                      (
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            if(selected.contains(4)){
                              selected.remove(4);
                            }else{
                              selected.add(4);
                            }

                          });
                        },
                        child: Container(
                          width: width/2.5,
                          decoration: BoxDecoration(
                            color: selected.contains(4)?Colors.grey:Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0), // Set rounded corner radius
                            border: Border.all(
                              color: Colors.grey, // Set border color
                              width: 2.0, // Set border width
                            ),
                          ),
                          child:Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Text(
                                "Spirtual",
                                style: TextStyle(color: Colors.white,fontSize: 22),
                              ),
                            ),
                          ), // Your child widget goes here
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          if(selected.contains(5)){
                            selected.remove(5);
                          }else{
                            selected.add(5);
                          }

                        });
                      },
                      child: Container(
                        width: width/2.5,
                        decoration: BoxDecoration(
                          color: selected.contains(5)?Colors.grey:Colors.transparent,
                          borderRadius: BorderRadius.circular(30.0), // Set rounded corner radius
                          border: Border.all(
                            color: Colors.grey, // Set border color
                            width: 2.0, // Set border width
                          ),
                        ),
                        child:Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              "Other",
                              style: TextStyle(color: Colors.white,fontSize: 22),
                            ),
                          ),
                        ), // Your child widget goes here
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: GestureDetector(
                  onTap: (){

                  },
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SetGoalScreen()));
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
