import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Adjust width and height based on screen size
    double containerWidth = screenWidth < 400 ? screenWidth * 0.9 : 350;
    double containerHeight = screenHeight < 700 ? 550 : 500;

    return Scaffold(
      backgroundColor: Color(0xFF0D9488),
      body: Center(
        child: Container(
          width: containerWidth,
          height: containerHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xFFE5E7EB),
          ),
          child: SizedBox(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 64),
                  child: Text(
                    'FinTrack',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D9488),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32, left: 32, right: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          label: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Username",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          hintText: "Enter your username",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Color(0xFFF5F5F5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          hoverColor: Color.fromARGB(161, 238, 235, 235),
                        ),
                      ),
                      SizedBox(height: 24),
                      TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          label: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Password",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          hintText: "Enter your password",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Color(0xFFF5F5F5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          hoverColor: Color.fromARGB(161, 238, 235, 235),
                        ),
                      ),
                      SizedBox(height: 32),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(200, 50),
                            backgroundColor: Color(0xFF0D9488),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            print("Login Button Pressed");
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Color(0xFFFFC107),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(200, 50),
                            backgroundColor: Color(0xFF0D9488),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            print("Sign Up button pressed");
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xFFFFC107),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            print("Password forgotten");
                          },
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                    ],
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
