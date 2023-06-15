// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class GetdataFromApi extends StatelessWidget {
  GetdataFromApi({super.key});

  List<film> Allfilms = [];

    Future getData() async{
    var response = await http.get(Uri.https('api.nationalize.io','/',{'name':'nathaniel'}));
    var jsonData = jsonDecode(response.body);

    for(var data in jsonData["country"]){
      final films = film(
        country: data["country_id"],
        probability: data["probability"]
      );
      Allfilms.add(films);
    }
    print(Allfilms[1].country);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getData(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done){
            return Column(
              children:[
                for(int i = 0; i < Allfilms.length; i++)
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromARGB(75, 255, 255, 255)),
                          child: ListTile(
                          title: Text(Allfilms[i].country, style: TextStyle(color: Colors.white),),
                          subtitle: Text(Allfilms[i].probability.toString(), style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  
              ],
            );
          }else {
            return Center(child: CircularProgressIndicator());
          }
        }),
      ),
    );
  }
}