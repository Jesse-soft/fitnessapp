import 'package:flutter/material.dart';

class ActionView extends StatefulWidget {
  const ActionView({Key? key}) : super(key: key);

  @override
  State<ActionView> createState() => _HomeState();
}

class _HomeState extends State<ActionView> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
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
                    "Action Steps",
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
                  Text(
                    "Ultimate Goal",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Container(
                height: 65,
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 5, bottom: 0),
                          child: Text(
                            "Edit",
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Center(
                            child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 100),
                          child: Text(
                            'Lose 50 lbs',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ],
                    ),
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
                    "Recommendation",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selected == 0
                            ? Colors.blueAccent
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(
                            20.0), // Set rounded corner radius
                        border: Border.all(
                          color: selected == 0
                              ? Colors.transparent
                              : Colors.grey, // Set border color
                          width: 1.0, // Set border width
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        child: Center(
                            child: Text(
                          "All",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selected == 1
                            ? Colors.blueAccent
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(
                            20.0), // Set rounded corner radius
                        border: Border.all(
                          color: selected == 1
                              ? Colors.transparent
                              : Colors.grey, // Set border color
                          width: 1.0, // Set border width
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        child: Center(
                            child: Text(
                          "Favourite",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 10),
              child: Container(
                height: 235,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(
                            20.0), // Set rounded corner radius
                        border: Border.all(
                          color: Colors.black, // Set border color
                          width: 2.0, // Set border width
                        ),
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(
                                10.0), // Set rounded corner radius
                          ),
                          child: Icon(
                            Icons.move_down,
                            color: Colors.white,
                          ),
                        ), // Add leading icon
                        title: Text(
                          'John Doe',
                          style: TextStyle(color: Colors.white),
                        ), // Add title text
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ), // Add trailing icon
                        onTap: () {
                          // Handle tap on ListTile
                        },
                      ),
                    ),
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
                    "Just For You",
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
                child: Image.asset("assets/gym.jpg"),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
              child: Container(
                child: Image.asset("assets/gym.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
