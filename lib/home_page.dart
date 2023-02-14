// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_app/components/circular_icon_box.dart';
import 'package:new_app/components/container_one.dart';
import 'package:new_app/components/container_two.dart';
import 'package:new_app/components/my_appbar.dart';

import 'components/small_bubble_box.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbar------------------
            MyAppBar(),
            SizedBox(
              height: 10,
            ),
            //text Home---------------------
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Home",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //horizontally scrollable small box--------------
            Container(
              height: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SmallBubbleBox(
                    name: "Top",
                  ),
                  SmallBubbleBox(
                    name: "CS;GO",
                  ),
                  SmallBubbleBox(
                    name: "Data 2",
                  ),
                  SmallBubbleBox(
                    name: "FIFA",
                  ),
                  SmallBubbleBox(
                    name: "CS:GO",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
      
            //three big box
            ContainerOne(),
            ContainerTwo(title1:"IEM Katowice",title2: "Faze vs liquid",icon1: Icons.bolt,icon2: Icons.headphones,),
            ContainerTwo(title1: "LCS Spring",title2: "TSM vs Cloud9",icon1: Icons.circle,icon2: Icons.videogame_asset,)
          ],
        )),
      ),
    );
  }
}
