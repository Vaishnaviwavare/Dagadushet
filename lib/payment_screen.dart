import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dagadushet_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  final num total;
  const PaymentScreen({super.key, required this.total});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override            
  void initState() {   
    super.initState();
    getData();
  }

  List totalList = [];
  void getData() async {
    QuerySnapshot data =
        await FirebaseFirestore.instance.collection('pass').get();
    totalList.clear();
    for (var value in data.docs) {
      totalList.add({
        "total": value["total"],
      });
    }
  }

  void _showPaymentSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green),
              const SizedBox(width: 10),
              Text(
                "Payment Successful",
                style: GoogleFonts.alef(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          content: Text(
            "Thank you for your payment! Your transaction was successful.",
            style: GoogleFonts.alef(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
                  return HomePage();
                }), (route) => true,);
                
              },
              child: Text(
                "OK",
                style: GoogleFonts.alef(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent[700],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payment",
          style: GoogleFonts.alef(
            fontSize: 23,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent[700],
        elevation: 4.0,
      ),
      body: Container(
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Display Total Amount
                Text(
                  "Total Amount to Pay",
                  style: GoogleFonts.alef(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "₹${widget.total}",
                  style: GoogleFonts.alef(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                // Payment Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    _showPaymentSuccessDialog();
                  },
                  child: Text(
                    "Pay Now",
                    style: GoogleFonts.alef(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
