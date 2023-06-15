import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:movieboket/API.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);


  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(children: [
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
              padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: (() {
                              Navigator.pop(context);
                            }),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                              size: 30,
                            )),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: Color.fromARGB(121, 3, 65, 116)),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(71, 0, 0, 0)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 80),
                                child: Row(
                                  children: const  [
                                    Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Search Movie",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                        
              
                      ],
                    ),
                    SizedBox(height: 15,),

                    GetdataFromApi(),
                    
                  ],
                ),
              ),
              
            ),
          ),
      ]),
    );


  }
}
