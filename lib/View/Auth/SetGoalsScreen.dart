import 'package:fitnessapp/chatbox/chatbox.dart';
import 'package:fitnessapp/View/Auth/PersonalInfoScreen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:async';

class SetGoalScreen extends StatefulWidget {
  const SetGoalScreen({Key? key}) : super(key: key);

  @override
  State<SetGoalScreen> createState() => _SetGoalScreenState();
}

class _SetGoalScreenState extends State<SetGoalScreen> {
  TextEditingController name = new TextEditingController();
  final supabase = Supabase.instance.client;

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
                          color: Color.fromARGB(255, 244, 214, 214)),
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
                  onTap: () async {
                    var response = await sendMessagefull(
                        message:
                            """Please provide a JavaScript array of 6 random YouTube video links related to workouts. Ensure that it is different from the previous response, if one has been provided. The array should not be enclosed in code blocks and should be in textual format. Only include the array in the response. Do not add any additional phrases such as "Certainly," "Apologize," "Here's," or any heading. Ensure that the response is solely focused on providing the array. Avoid adding any extra content at the beginning or end.""",
                        modelId: "text-davinci-003");
                    print(response);
                    try {
                      await supabase.from('links').insert({
                        'body': 'response',
                      });
                    } catch (error) {
                      print('$error');
                      rethrow;
                    }

                    // await Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => GoalText(
                    //       decreas: "asdf",
                    //     ),
                    //   ),
                    // );
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
