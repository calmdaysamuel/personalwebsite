import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(

        children: [
          Column(
            children: [
              Text("Contact"),
              Text("stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff"),
              Text("stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff"),
              Row(
                children: [
                  IconButton(icon: Icon(Icons.menu),),
                  IconButton(icon: Icon(Icons.menu),),
                  IconButton(icon: Icon(Icons.menu),)
                ],
              ),
              Text("2020 Calmday. ALl rights Reserved.")
            ],
          ),
          Column(
            children: [
              Text("SUBSCRIBE"),
              Text("stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff"),
              Text("stuff stuff stuff stuff stuff stuff stuff stuff stuff stuff"),
              Row(
                children: [

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
