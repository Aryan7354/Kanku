import 'package:flutter/material.dart';
import 'package:kanku/Login.dart';
import 'package:kanku/Textfiel.dart';

class selection_page extends StatefulWidget {
  const selection_page({super.key});

  @override
  State<selection_page> createState() => _selection_pageState();
}

class _selection_pageState extends State<selection_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/img_1.png',
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 100),
                    child: Image.asset(
                      'assets/images/img_2.png',
                      height: 95,
                    ),
                  )),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  "Let's get started!",
                  style: TextStyle(
                    color: Color(0xFF141414),
                    fontSize: 24,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Login to enjoy the features we've ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 0.09,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "nprovided, and Social Media  ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 0.09,
                ),
              ),
              SizedBox(
                height: 250,
              ),

              containerMethod(
                text: 'Login',
                color: Color(0xFF2F4858),
                textColor: Colors.white,
                onTap: () {
                  // Navigate to the login screen here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              containerMethod(
                text: 'Sign Up',
                color: Colors.white,
                textColor: Color(0xFF2F4858),
                onTap: () {
                  // Navigate to the sign-up screen here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget containerMethod({
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(
        onTap: onTap, // Use the provided onTap callback for navigation
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(),
            color: color,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
