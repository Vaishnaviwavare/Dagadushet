import 'package:flutter/material.dart';

class ShowPassScreen extends StatefulWidget {
  const ShowPassScreen({super.key});

  @override
  State<ShowPassScreen> createState() => _ShowPassScreenState();
}

class _ShowPassScreenState extends State<ShowPassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.network("https://www.shutterstock.com/shutterstock/photos/1249195810/display_1500/stock-vector-vector-pass-grunge-stamp-seal-with-tick-inside-green-pass-imprint-with-dirty-style-round-rubber-1249195810.jpg"),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}