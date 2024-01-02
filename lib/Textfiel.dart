import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text(
            'Sign Up',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
            ),
            textFormMethod(
                isPrefixIcon: Icon(Icons.person),
                Controller: _nameController,
                hintText: "Full Name"),
            textFormMethod(
                isPrefixIcon: Icon(Icons.email_outlined),
                Controller: _emailController,
                hintText: "Enter Address"),
            textFormMethod(
                isPrefixIcon: Icon(Icons.phone),
                Controller: _mobileController,
                hintText: "Mobile Number"),
            textFormMethod(
                isPrefixIcon: Icon(Icons.lock),
                Controller: _passwordController,
                hintText: "Password",
                isSuffixicon: true),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [
                  Checkbox(
                    shape: CircleBorder(),
                    checkColor: Colors.white,
                    activeColor: Colors.blueGrey,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'I agree to the medidoc ',
                          style: TextStyle(
                            color: Color(0xFF909090),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                            color: Color(0xFF59BFAC),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                        TextSpan(
                          text: ' and\n',
                          style: TextStyle(
                            color: Color(0xFF909090),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),

                      ],
                    ),

                  ),

                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child:  Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text( 'Privacy Policy',
                  style: TextStyle(
                    color: Color(0xFF59BFAC),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.12,
                  ),
                ),
              ),
            ),

            Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFF2F4858),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26082822),
                          blurRadius: 40,
                          offset: Offset(0, 16),
                          spreadRadius: 0,
                        ),
                      ]),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: Color(0xFF909090),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0.09,
                      ),
                    ),
                    TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(
                        color: Color(0xFF59BFAC),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  textFormMethod({
    required isPrefixIcon,
    required TextEditingController Controller,
    required String hintText,
    bool isSuffixicon = false,
    GestureTapCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: TextFormField(
        controller: Controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(
              color: Color(0xffff608F86),
              fontSize: 14,
              fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          prefixIcon: isPrefixIcon,
          suffixIcon: isSuffixicon
              ? GestureDetector(
                  onTap: onTap,
                  child: Image.asset(
                    'assets/images/img_12.png',
                  ))
              : SizedBox(),
          hintText: hintText,
        ),
      ),
    );
  }
}
