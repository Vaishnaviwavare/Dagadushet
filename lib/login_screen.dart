import 'dart:developer';
import 'package:dagadushet_app/home_page.dart';
import 'package:dagadushet_app/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF6F00), // Deep orange
              Color(0xFFFFD54F), // Warm yellow
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // App Title
                const Text(
                  "Ganpati Temple",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Login to Continue",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 30),
                // Email Field
                TextField(
                  controller: _emailTextEditingController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: const TextStyle(color: Colors.white70),
                    prefixIcon: const Icon(Icons.email, color: Colors.white70),
                    filled: true,
                    fillColor: Colors.white24,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Password Field
                TextField(
                  controller: _passwordTextEditingController,
                  style: const TextStyle(color: Colors.white),
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(color: Colors.white70),
                    prefixIcon: const Icon(Icons.lock, color: Colors.white70),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      child: Icon(
                        _showPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.white70,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white24,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Login Button
                ElevatedButton(
                  onPressed: () async {
                    if (_emailTextEditingController.text.trim().isNotEmpty &&
                        _passwordTextEditingController.text.trim().isNotEmpty) {
                      try {
                        UserCredential userCredential =
                            await _firebaseAuth.signInWithEmailAndPassword(
                          email: _emailTextEditingController.text,
                          password: _passwordTextEditingController.text,
                        );
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                          return HomePage();
                        }));
                        log("Logged in as: ${userCredential.user!.email}");
                        // Navigate to the next screen (replace with your logic)
                      } on FirebaseAuthException catch (error) {
                        log("Error: ${error.code}");
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(error.message ?? "Login failed"),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade100,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  
                  ),
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Register Link
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context){
                          return RegisterScreen();}));
                    }   ,               
                  child: const Text(
                    "Don't have an account? Register",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
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
