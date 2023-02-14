import 'package:flutter/material.dart';

class SmallBubbleBox extends StatelessWidget {
  // const SmallBubbleBox({super.key});
  String name;
  SmallBubbleBox({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0),
      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[900],
                        border: Border.all(color: Colors.white)),
                    padding: EdgeInsets.symmetric(horizontal:15,vertical: 9),
                    child: Text(
                      name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
    );
  }
}