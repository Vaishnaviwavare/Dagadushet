import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dagadushet_app/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _personController = TextEditingController();

  num fixedRate = 100;
  num total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Book A Pass",
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Title
                  Text(
                    "Pass Booking Details",
                    style: GoogleFonts.alef(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  // Name Input
                  _buildTextField(
                    controller: _nameController,
                    label: "Name",
                    hint: "Enter Your Name",
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 20),
                  // Date Picker Input
                  _buildTextField(
                    controller: _dateController,
                    label: "Date",
                    hint: "Pick a Date",
                    icon: Icons.calendar_today,
                    readOnly: true,
                    onTap: () async {
                      DateTime? myDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2025),
                      );
                      if (myDate != null) {
                        String formattedDate = DateFormat.yMMMd().format(myDate);
                        _dateController.text = formattedDate;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  // Total Persons Input
                  _buildTextField(
                    controller: _personController,
                    label: "Total Persons",
                    hint: "Enter Number of Persons",
                    icon: Icons.people,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 30),
                  // Proceed Button
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
                    onPressed: () async {
                      if (_personController.text.isNotEmpty &&
                          _nameController.text.isNotEmpty &&
                          _dateController.text.isNotEmpty) {
                        final totalPersons = int.parse(_personController.text);
                        total = fixedRate * totalPersons;
                        log("$total");

                        Map<String, dynamic> data = {
                          "name": _nameController.text,
                          "date": _dateController.text,
                          "person": _personController.text,
                          "total": total,
                        };

                        await FirebaseFirestore.instance
                            .collection('pass')
                            .add(data);
                        log("Data added: $data");

                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return PaymentScreen(total: total);
                          },
                        ));
                      }
                    },
                    child: Text(
                      "Proceed to Pay",
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
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    IconData? icon,
    TextInputType keyboardType = TextInputType.text,
    bool readOnly = false,
    VoidCallback? onTap,
  }) {
    return SizedBox(
      width: double.infinity,
      child: TextField(
        controller: controller,
        readOnly: readOnly,
        onTap: onTap,
        keyboardType: keyboardType,
        style: const TextStyle(color: Colors.black87),
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          prefixIcon: Icon(icon, color: Colors.deepOrangeAccent[700]),
          filled: true,
          fillColor: Colors.white,
          labelStyle: TextStyle(
            color: Colors.deepOrangeAccent[700],
          ),
          hintStyle: const TextStyle(
            color: Colors.black45,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: Colors.deepOrangeAccent[700]!,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: Colors.orangeAccent,
            ),
          ),
        ),
      ),
    );
  }
}
