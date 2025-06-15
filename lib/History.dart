import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      SingleChildScrollView(
                  scrollDirection: Axis.vertical,
        child: Column(
          children: [
                Container(
                  padding: const EdgeInsets.all(2),
                              height:500 ,
                              width: 2000,
                              child: Image.network(
                                fit: BoxFit.cover,
                                "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcTUtHVQ4zKy7VxU_ghnLLhHUQgZeILc1IhzhR_qoG0hvhctuet6Sc0X6vHva2RdtR9R3rUlYRykzhuGjdi54VeifGvUTqleAURj1pcq8w"
                              ),
                            ),
            
        
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(width: 40,),
                    Text("The deity of Lord Ganesha was incepted by Shri Dagdusheth Halwai and his wife Lakshmibai way back, when they lost their only son to the plague epidemic. Every year, the Ganpati festival was celebrated with deep faith and enthusiasm, not only by Dagdusheths family but the entire neighborhood. Tatyasaheb Godse, then in his early youth, was a zestful participant in the celebrations. In later years, when Lokmanya Tilak made Ganpati festival a public celebration to bring people together for the freedom struggle, Dagdusheth Ganpati became the most respected and popular idol in Pune",),
                    ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(width: 40,),
                      Text("In 1952, the responsibility of organizing the festival at Shrimant Dagdusheth Halwai Ganpati temple officially fell upon Tatyasaheb and his group of friends. Under Tatyasaheb’s able guidance and leadership, his associates like Mamasaheb Rasane, Adv. Shankarrao Suryavanshi and K. D. Rasane planned and executed the festival with meticulous planning and professionalism, and since then, there was no looking back for them. As generous donors and devotees contributed towards the temple fund, Tatyasaheb and his friends thought what better way to worship the Lord than to serve our own fellow beings.",),
                      ]
                    ),
                   ),
                Container(
                  margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(width: 40,),
                      Text("Soon, the young motivated group took the activities of the festival and the temple beyond traditional worship, into the domain of social and cultural development. Besides a rich religious schedule at the temple, they engaged in addressing the social and political problems of the state.",),
                      ]
                    ),
                    ),
                    Container(
                  margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(width: 40,),
                      Text("Under the aegis of Dagdusheth Halwai Sarvajanik Ganpati Trust, they started several social initiatives including educational and financial support to deprived children, micro finance to small businessmen and vendors through Suvarnayug Sahakari Bank, old age home, and rehabilitation of workers working at brick kilns, to name a few.")
                       ]
                    ),
                    ),
                    Container(
                  margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(width: 40,),
                      Text("Today, by Lord Ganesha’s blessings, Shrimant Dagdusheth Halwai Sarvajanik Ganpati Trust has flourished into a veteran organization that is gratified to worship the Lord through its service to humanity.")
                       ]
                    ),
                    )
          ]
        ),
                  ),
      );
        
  
      
     
    
    
  }
}