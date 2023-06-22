import 'package:fitnessapp/View/MyNavigationBar.dart';
import 'package:flutter/material.dart';
class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  var items = [
    'Male',
    'Female',
    'Other',
  ];
  String dropdownvalue = 'Male';
  var items2 = [
    '1-10',
    '10-20',
    '20-30',
    '30-40',
    '40-50',
  ];
  String dropdownvalue2 = '1-10';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width / 1.3,
            child: Text(
              "Almost There Sign In and get Started",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),
            ),

          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(

              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25,bottom: 5),
                      child: Text(
                        "Age",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: width/2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0), // Set rounded corner radius
                          border: Border.all(
                            color: Colors.grey, // Set border color
                            width: 1.0, // Set border width
                          ),
                        ),
                        child:Padding(
                          padding: EdgeInsets.only(left: 23),
                          child: DropdownButton(
                            style:  TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            underline: SizedBox(),
                            isExpanded: true,
                            value: dropdownvalue2,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue2 = newValue!;
                              });
                            },
                            items: items2.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items,style: TextStyle(color: Colors.grey),),
                              );
                            }).toList(),
                          ),
                        ), // Your child widget goes here
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        "Gender",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: width/2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0), // Set rounded corner radius
                        border: Border.all(
                          color: Colors.grey, // Set border color
                          width: 1.0, // Set border width
                        ),
                      ),
                      child:Padding(
                        padding: EdgeInsets.only(left: 23,right: 5),
                        child: DropdownButton(
                          style:  TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                          underline: SizedBox(),
                          isExpanded: true,
                          value: dropdownvalue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,style: TextStyle(color: Colors.grey),),
                            );
                          }).toList(),
                        ),
                      ), // Your child widget goes here
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(

              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25,bottom: 5),
                      child: Text(
                        "Race",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: width/2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0), // Set rounded corner radius
                          border: Border.all(
                            color: Colors.grey, // Set border color
                            width: 1.0, // Set border width
                          ),
                        ),
                        child:Padding(
                          padding: EdgeInsets.only(left: 23),
                          child: DropdownButton(
                            style:  TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            underline: SizedBox(),
                            isExpanded: true,
                            value: dropdownvalue2,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue2 = newValue!;
                              });
                            },
                            items: items2.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items,style: TextStyle(color: Colors.grey),),
                              );
                            }).toList(),
                          ),
                        ), // Your child widget goes here
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        "Gender",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: width/2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0), // Set rounded corner radius
                        border: Border.all(
                          color: Colors.grey, // Set border color
                          width: 1.0, // Set border width
                        ),
                      ),
                      child:Padding(
                        padding: EdgeInsets.only(left: 23,right: 5),
                        child: DropdownButton(
                          style:  TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                          underline: SizedBox(),
                          isExpanded: true,
                          value: dropdownvalue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,style: TextStyle(color: Colors.grey),),
                            );
                          }).toList(),
                        ),
                      ), // Your child widget goes here
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyNavigationBar()));
              },
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
