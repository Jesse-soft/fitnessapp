import 'package:fitnessapp/View/Home/chatbot/screens/chatbot.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selected = 0;
  final links = [
    "https://www.youtube.com/watch?v=3p8EBPVZ2Iw",
    "https://www.youtube.com/watch?v=8A-_aBoT4kk",
    "https://www.youtube.com/watch?v=JCXUYuzwNrM",
    "https://www.youtube.com/watch?v=7w7MgN0hQHY",
    "https://www.youtube.com/watch?v=uyFjMup-I3I",
    "https://www.youtube.com/watch?v=JGwWNGJdvx8",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    width: 40.0, // Set container width and height
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Set circle shape
                      image: DecorationImage(
                        fit: BoxFit.cover, // Set image fit
                        image:
                            AssetImage('assets/person.jpg'), // Set image path
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
                  Container(
                    child: Text(
                      "Hello,\nErlich Bachman",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Container(
                height: 105,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) => Card(
                    color: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Set corner radius
                    ),
                    child: Column(
                      children: [
                        Center(
                            child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15, top: 10, right: 100),
                              child: Text(
                                'Lose 50 lbs',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 5, right: 5, bottom: 0),
                              child: Text(
                                "Edit",
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )),
                        Padding(
                          padding: EdgeInsets.only(top: 40, bottom: 20),
                          child: Container(
                            width: 200,
                            child: LinearProgressIndicator(
                              value: 0.7,
                              // The value should be between 0.0 and 1.0
                              backgroundColor: Colors.grey,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.blue),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 10, top: 10),
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius:
                      BorderRadius.circular(15.0), // Set rounded corner radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Today quote",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 10),
                      child: Center(
                          child: Text(
                        "Our greated Glory is not never failing, But rising every time we fail",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jorden Peterson advice",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
              child: Container(
                child: Image.asset("assets/advice.jpg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Container(
                height: 145,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today Goal",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Card(
                        color: Colors.grey.shade800,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Set corner radius
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, top: 10, right: 100),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurpleAccent,
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Set rounded corner radius
                                    ),
                                    child: Icon(
                                      Icons.move_down,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, right: 5, bottom: 0),
                                  child: Text(
                                    "Edit",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            )),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, top: 30, bottom: 10),
                              child: Text(
                                "Runs 2 milles",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "AI Coach",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 10, top: 10),
              child: Container(
                width: width,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius:
                      BorderRadius.circular(15.0), // Set rounded corner radius
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Let's Talk",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(
                            15.0), // Set rounded corner radius
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          },
                          child: Text(
                            "I need some advice",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
