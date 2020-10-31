import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(icon: Icon(Icons.menu),),
              Text("Calmday")
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Text("Work"),
                  Text("Blog"),
                  Text("Hire Me")
                ],
              ),
              Row(
                children: [
                  IconButton(icon: Icon(Icons.menu),),
                  IconButton(icon: Icon(Icons.menu),),
                  IconButton(icon: Icon(Icons.menu),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
