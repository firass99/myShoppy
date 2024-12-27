import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
  }

  // Function to simulate splash screen delay
  void _navigateToHomeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
          context, '/home'); // Replace with your home screen route
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Dynamically sized logo
            Image.asset(
              'assets/images/shop-app-icon.png',
              height: MediaQuery.of(context).size.height *
                  0.2, // 20% of screen height
            ),
            SizedBox(height: 30),
            // Loading spinner
            SpinKitFadingCircle(
              color: Colors.white,
              size: 50.0,
            ),
            SizedBox(height: 20),
            // Loading message
            Text(
              'Loading, please wait...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
