// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movieboket/movie1.dart';
import 'package:movieboket/search.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 46, 89, 137),
              Color.fromARGB(255, 3, 19, 72)
            ])),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 50, right: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: SizedBox(
                              height: 5,
                              width: 50,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: SizedBox(
                              height: 5,
                              width: 30,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: SizedBox(
                              height: 5,
                              width: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                      Text(
                        "Hi, Syaukas !",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Lets see something new",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  //search bar
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 0, 35, 63),
                            Color.fromARGB(255, 11, 75, 127)
                          ])),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            Text(
                              "Search Movie",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  //film

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 35,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => More()));
                          },
                          child: Column(children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/Dilan.jpeg'),fit: BoxFit.fill,),
                                  color: Colors.white),
                              child: SizedBox(
                                height: 350,
                                width: 240,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Dilan",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ]),
                        ),
                  
                        SizedBox(
                          width: 25,
                        ),
                  
                        //film 3
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => More()));
                          },
                          child: Column(children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/melodylan.jpeg'), fit: BoxFit.fill),
                                  color: Colors.white),
                              child: SizedBox(
                                height: 350,
                                width: 240,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Melodylan",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ]),
                        ),
                  
                        SizedBox(
                          width: 25,
                        ),
                  
                        //film 2
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => More()));
                          },
                          child: Column(children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/laskarmelangi.jpeg'), fit: BoxFit.fill),
                                  color: Colors.white),
                              child: SizedBox(
                                height: 350,
                                width: 240,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Laskar Pelangi",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //navigation bar
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 0, 35, 63),
                          Color.fromARGB(255, 11, 75, 127)
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  size: 33,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white),
                                  child: SizedBox(
                                    height: 2,
                                    width: 30,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.bookmark,
                              color: Colors.white,
                              size: 33,
                            ),
                            Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 33,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
