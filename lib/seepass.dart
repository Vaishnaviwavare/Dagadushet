import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dagadushet_app/booking.dart';

class SeePassScreen extends StatefulWidget {
 
  // Constructor to receive data from previous screen
  SeePassScreen({
    super.key,
   
  });

  @override
  State<SeePassScreen> createState() => _SeePassScreenState();
}

class _SeePassScreenState extends State<SeePassScreen> {
  @override
  void initState(){
    super.initState();
    getFirebaseData();
  }
  List bookingList=[];
  void getFirebaseData()async{
    QuerySnapshot response=await FirebaseFirestore.instance.collection("pass").get();

    for(var data in response.docs){
      bookingList.add({
        "name":data["name"],
        "eventDate":data['date'],
        "totalPersons":data['person']
      });
    }
    print(bookingList);
    setState(() {
      
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Your Pass",
          style: GoogleFonts.alef(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent[700],
        elevation: 4.0,
      ),
      body: bookingList.isEmpty?Center(child: Text("Not Booking Yet"),): Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrangeAccent[700]!,
              Colors.orangeAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
            

              // Pass Information Card
              SizedBox(
                height: MediaQuery.of(context).size.height-200,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: bookingList.length,
                  itemBuilder:(context,index){
                    return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name: ${bookingList[index]["name"]}",
                            style: GoogleFonts.alef(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Event Date: ${bookingList[index]['eventDate']}",
                            style: GoogleFonts.alef(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Number of Persons: ${bookingList[index]['totalPersons']}",
                            style: GoogleFonts.alef(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                  }
                   
                ),
              ),

              SizedBox(height: 20),

              // Thank you message (optional)
              Text(
                "Thank you for booking with us. We look forward to welcoming you!",
                style: GoogleFonts.alef(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
