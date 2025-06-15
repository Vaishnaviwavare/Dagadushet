import 'package:dagadushet_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Eseva extends StatefulWidget {
  const Eseva({super.key});

  @override
  State<Eseva> createState() => _EsevaState();
}

class _EsevaState extends State<Eseva> {
  final List<Map<String, dynamic>> donationOptions = [
    {"title": "General Donation", "amount": 500},
    {"title": "Temple Maintenance", "amount": 1000},
    {"title": "Festive Contributions", "amount": 2000},
    {"title": "Special Rituals", "amount": 5000},
  ];

  num selectedAmount = 0;

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
                "Donation Successful",
                style: GoogleFonts.alef(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          content: Text(
            "Thank you for your generous donation of ₹$selectedAmount! May Lord Ganpati bless you with prosperity and happiness.",
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
          "Eseva - Donations",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Select a Donation Option",
                style: GoogleFonts.alef(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: donationOptions.length,
                  itemBuilder: (context, index) {
                    final option = donationOptions[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedAmount = option["amount"];
                        });
                      },
                      child: Card(
                        color: selectedAmount == option["amount"]
                            ? Colors.orangeAccent
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          title: Text(
                            option["title"],
                            style: GoogleFonts.alef(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: selectedAmount == option["amount"]
                                  ? Colors.white
                                  : Colors.black87,
                            ),
                          ),
                          trailing: Text(
                            "₹${option["amount"]}",
                            style: GoogleFonts.alef(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: selectedAmount == option["amount"]
                                  ? Colors.white
                                  : Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
               selectedAmount > 0
                      ?
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
                onPressed: selectedAmount > 0
                    ? () {
                        _showPaymentSuccessDialog();
                      }
                    : null,
                child: Text(
                
                       "Donate ₹$selectedAmount",
                      
                  style: GoogleFonts.alef(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent[700],
                  ),
                ),
              ):SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
