import 'package:flutter/material.dart';

class Progressclass extends StatefulWidget {
  const Progressclass({Key? key}) : super(key: key);

  @override
  State<Progressclass> createState() => _ProgressState();
}

class _ProgressState extends State<Progressclass> {
  int selected=0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Progress",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    width: 40.0, // Set container width and height
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Set circle shape
                      image: DecorationImage(
                        fit: BoxFit.cover, // Set image fit
                        image: AssetImage('assets/person.jpg'), // Set image path
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You're doing great",
                    style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selected=0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selected==0?Colors.blueAccent:Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0), // Set rounded corner radius
                        border: Border.all(
                          color: selected==0?Colors.transparent:Colors.grey, // Set border color
                          width: 1.0, // Set border width
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                        child: Center(child: Text("Days",style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10,right: 10),
              child: Container(
                height: height/1.5,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) =>
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(20.0), // Set rounded corner radius
                            border: Border.all(
                              color: index%3!=0?Colors.green:Colors.red, // Set border color
                              width: 2.0, // Set border width
                            ),
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Yesterday',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                                Text('Runs 2 milles',style: TextStyle(color: Colors.white),),
                                Icon(index%3!=0?Icons.check:Icons.close,color: index%3!=0?Colors.green:Colors.red,),
                              ],

                            ),
                          ),
                        ),
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
