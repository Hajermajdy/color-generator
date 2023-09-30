import 'dart:math';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Color> listColors = [
    Colors.primaries[Random().nextInt(Colors.primaries.length)],
    Colors.primaries[Random().nextInt(Colors.primaries.length)],
    Colors.primaries[Random().nextInt(Colors.primaries.length)],
    Colors.primaries[Random().nextInt(Colors.primaries.length)],
    Colors.primaries[Random().nextInt(Colors.primaries.length)],
  ];
  var box1 = Random().nextInt(Colors.primaries.length);
  var box2 = Random().nextInt(Colors.primaries.length);
  var box3 = Random().nextInt(Colors.primaries.length);
  var box4 = Random().nextInt(Colors.primaries.length);
  var box5 = Random().nextInt(Colors.primaries.length);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black12,
              width: 1
          ),
          borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("Color generator",style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  width: 40,
                  height: 200,
                  color: Colors.primaries[box1],
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                ),
                Container(
                  width: 40,
                  height: 200,
                  color: Colors.primaries[box2],
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                ),
                Container(
                  width: 40,
                  height: 200,
                  color: Colors.primaries[box3],
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                ),
                Container(
                  width: 40,
                  height: 200,
                  color: Colors.primaries[box4],
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                ),
                Container(
                  width: 40,
                  height: 200,
                  color: Colors.primaries[box5],
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                elevation: 0,
                backgroundColor: Colors.black12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                )
              ),
                onPressed: () {
                  setState(() {
                    box1 = Random().nextInt(Colors.primaries.length);
                    box2 = Random().nextInt(Colors.primaries.length);
                    box3 = Random().nextInt(Colors.primaries.length);
                    box4 = Random().nextInt(Colors.primaries.length);
                    box5 = Random().nextInt(Colors.primaries.length);

                  });

                },
                child: Text("Change Colors",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black),))
          ],
        ),
      ),
    );
  }
}
