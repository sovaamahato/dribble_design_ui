import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:const Color(0x272639),
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: Column(
        children: [
          //appbar------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:14.0,vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.orange[900],
                  borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Text("Today",style:TextStyle(color: Colors.white,fontSize: 14) ,)
                  ,
                  Icon(Icons.arrow_drop_down,color: Colors.white,)
                  ],) ,
                ),
          
                Stack(
                  children: [
                    Container(
                      width: 100,
                      color: Colors.white,
          
                    ),
                    
                    Positioned(
                      left: 40,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                        color: Colors.orange[800],
                        borderRadius: BorderRadius.circular(50)),
                                    padding: EdgeInsets.all(10),
                    
                        child: Icon(Icons.search,color: Colors.white,),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.all(10),
          
                      child: Icon(Icons.notifications_active_outlined,color: Colors.white,),
                    ),
                  ],
                ),
          
          
              ],
            ),
          ),
          //text Home---------------------
          //horizontally scrollable small box--------------
          //three big box
        ],
      )),
    );
  }
}
