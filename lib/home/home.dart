import 'package:flutter/material.dart';
import 'package:shopui/coomon/bottomNav.dart';
import 'package:shopui/coomon/color.dart';
import 'package:shopui/coomon/image.dart';
import 'package:shopui/home/trendind.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool trand = false;
  bool popular = true;
  bool fav = true;
  bool deal = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: Mycolor.Backgroungcollor,
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(40)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.7),
                          ),
                          child: Icon(Icons.menu_outlined)),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white.withOpacity(0.7)),
                        child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child:
                                CircleAvatar(backgroundImage: MyImage.profile)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 45,
                        width: 300,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.lightBlue, width: 2),
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search", border: InputBorder.none),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            //  border: Border.all(color: Colors.white,width: 2),
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25))),
                        height: 45,
                        width: 50,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              trand = false;
                            });
                            setState(() {
                              popular = true;
                            });
                            setState(() {
                              fav = true;
                            });
                            setState(() {
                              deal = true;
                            });
                          },
                          child: trand
                              ? Text("Trending")
                              : Text(
                                  "Trending",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              trand = true;
                            });
                            setState(() {
                              popular = false;
                            });
                            setState(() {
                              fav = true;
                            });
                            setState(() {
                              deal = true;
                            });
                          },
                          child: popular
                              ? Text("Popular")
                              : Text(
                                  "Popular",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              trand = true;
                            });
                            setState(() {
                              popular = true;
                            });
                            setState(() {
                              fav = false;
                            });
                            setState(() {
                              deal = true;
                            });
                          },
                          child: fav
                              ? Text("Favorite")
                              : Text(
                                  "Favorite",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              trand = true;
                            });
                            setState(() {
                              popular = true;
                            });
                            setState(() {
                              fav = true;
                            });
                            setState(() {
                              deal = false;
                            });
                          },
                          child: deal
                              ? Text("Deals")
                              : Text(
                                  "Deals",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Trending(),
                    Trending(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Trending(),
                    Trending(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: HomeBottomNav(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
