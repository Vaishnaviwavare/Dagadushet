import 'package:dagadushet_app/login_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();

    // Navigate to the HomePage after 3 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFD54F), // Warm yellow
              Color(0xFFFF6F00), // Vibrant orange
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
            
              const SizedBox(height: 20),
              // Decorative devotional text
              SlideTransition(
                position: _controller.drive(
                  Tween<Offset>(
                    begin: const Offset(0, 0.5),
                    end: Offset.zero,
                  ),
                ),
                child:const Column(
                  children: const [
                    Text(
                      'ॐ गणेशाय नमः',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Devanagari', // Replace with a suitable font if available
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.black45,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'SHREE GANESHAY NAMAH',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Custom loading indicator
             
            ],
          ),
        ),
      ),
    );
  }
}
