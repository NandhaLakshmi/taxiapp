import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final themeProvider = Provider.of<ThemeProvider>(context);
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          width: screenWidth > 100? 200 : screenWidth * 0.8, // Responsive width
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: () {
              // Button action
            },

            child: Text(
              'Get OTP',
              style: TextStyle(color: Colors.white,fontSize: screenWidth > 100 ? 14 : 6), // Responsive text size
            ),
          ),
        ),
      ),
    );
  }
}