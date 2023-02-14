import 'package:flutter/material.dart';

import 'circular_icon_box.dart';

class ContainerOne extends StatelessWidget {
  const ContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 8),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                
                gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 248, 76, 33),
              Color.fromARGB(255, 231, 79, 8),
              Color.fromARGB(255, 231, 79, 8),
              Color.fromARGB(255, 231, 79, 8),
              Color.fromARGB(255, 238, 132, 33),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
              borderRadius: BorderRadius.circular(19)),
              child: Column(
                
                children: [
                  SizedBox(height: 18,),
                  Text("BTS pro Series 14",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text("Data 2",style: TextStyle(color: Colors.grey[400],fontSize: 30),),
                  SizedBox(height: 13,),
                  Container(
                    
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      
                      Column(
                        children: [
                          CircularIconBox(icon: Icons.electric_bolt,color: Colors.orange[400],),
                          SizedBox(height: 10,),
                          Text("Thunder",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Text("0:1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                       Column(
                         children: [
                           CircularIconBox(icon: Icons.credit_score_sharp,color: Colors.orange[400],),
                            SizedBox(height: 10,),
                            Text("wildcard",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                         ],
                       ),
                    ],),
                  )
                ],
              ),
            ),
          );
  }
}