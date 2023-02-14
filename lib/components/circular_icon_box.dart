import 'package:flutter/material.dart';

class CircularIconBox extends StatelessWidget {
  final icon;
  final color;
  CircularIconBox({required this.icon,required this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: color,
                        child: Icon(icon,color: Colors.white,),
                      ),
                    );
  }
}