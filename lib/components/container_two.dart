import 'package:flutter/material.dart';

import 'circular_icon_box.dart';

class ContainerTwo extends StatelessWidget {
  String title1;
  String title2;
  final icon1;
  final icon2;
  ContainerTwo({required this.title1,required this.title2,required this.icon1,required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(19)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //first column
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title1,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 10,)
,                      Text(
                        title2,
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40,),
                      RichText(
                        text: TextSpan(
                          text: "22:00",
                          style: TextStyle(color: Colors.white),
                          children: const <TextSpan>[
                            TextSpan(
                                text: "  21 feb",
                                 style: TextStyle(color: Colors.grey),),
                            
                          ],
                        ),
                      )
                    ],
                  ),
                  //second column
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("~2.40",style: TextStyle(color: Colors.grey[700]),),
                          SizedBox(width: 10,),
                          CircularIconBox(
                            icon: icon1,
                            color: Colors.grey[600],
                          )
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Text("1.70",style: TextStyle(color: Colors.grey[700]),),
                          SizedBox(width: 10,),
                          CircularIconBox(
                            icon: icon2,
                            color: Colors.grey[600],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
  }
}