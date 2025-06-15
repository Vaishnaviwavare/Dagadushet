import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
         children: [
          Container(
            margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.network("https://www.dagdushethganpati.com/dg/social-initiatives/Jai-Ganesh-Rugnaseva-Campaign.webp"),
                Text(" Jay Ganesh Rugnaseva Campaign",style: TextStyle(fontWeight: FontWeight.w900),)
                ]
              )
          ),
        
        
          Container(
             margin: EdgeInsets.all(20),
              child: Row(
                children: [
                Text("Social Initiatives",style: TextStyle(fontWeight: FontWeight.w700),)
                ]
              )
          )
        
     ] )
    );
    
  }
}