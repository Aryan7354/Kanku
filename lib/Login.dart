import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kanku/bottombar.dart';
import 'package:kanku/home.dart';
import 'package:http/http.dart'as http;

import 'Model/login_Model.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  login_Model? userDataSuccess;
Result? loginResult;
  @override
  void initState() {
    super.initState();
    // No need for async/await here
    // Avoid calling an async function directly within initState
  }

  Future<void> handleLogin() async {
    try {
      await ApiLogin(); // Call your login API here
      // Navigate to the next screen or handle the login success
    } catch (e) {
      // Handle login failure or errors
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ))),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                textFormMethod(
                    isPrefixIcon: Icon(Icons.mail_outline),
                    Controller: _emailController,
                    hintText: 'Email Address / Mobile number'),
                SizedBox(
                  height: 15,
                ),
                textFormMethod(
                    isPrefixIcon: Icon(Icons.lock),
                    Controller: _passwordController,
                    hintText: 'Password',
                    isSuffixicon: true),
                Text(
                  'Forgot your password?',
                  style: TextStyle(
                    color: Color(0xFF59BFAC),
                    fontSize: 12,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    height: 4,
                  ),
                ),
                Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                    child: GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBarPage(),));
                    },
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
                          child: GestureDetector(
                            onTap: () {

                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                Text.rich(
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
                SizedBox(
                  height: 70,
                ),
                Text(
                  'OR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/img_13.png', height: 20,),
                      SizedBox(width: 15,),
                      Text(
                        'Sign In with Google',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5400000214576721),
                          fontSize: 18,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ));
  }

  textFormMethod({
    required isPrefixIcon,
    required TextEditingController Controller,
    required String hintText,
    bool isSuffixicon = false,
    GestureTapCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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

  Future<http.Response> fetchAlbum() async {
    //final response=http.get(Uri.parse('https://dcmdmobilenotary.com/laravel/api/get_type_of_signing'));
    final response = await http.get(Uri.parse(
        'https://dcmdmobilenotary.com/laravel/api/get_type_of_signing'));
    // Map<String,dynamic> data={
    //   'email':'',
    //   'password':''
    // };
    // final response = await http.post(Uri.parse('https://dcmdmobilenotary.com/laravel/api/get_type_of_signing'),
    // body: data);
    //

    var responseData = json.decode(response.body);
    print(responseData);

    return responseData;
  }

  Future<login_Model?> ApiLogin() async {
    try {
      Map<String, dynamic> data = {
        'email': _emailController.text,
        'password': _passwordController.text
      };
      http.Response response = await http.post(
          Uri.parse(
              'https://server-php-7-3.technorizen.com/bluecrown/webservice/signup?'),
          body: data);
      print('response:::::::::::${response.body}');
      /*
                print('response:::::::::::::::::${response.body}');
                print('response:::::::::::::::::${jsonDecode(response.body)}');
                Map map = jsonDecode(response.body);
                print('response:::::::::::::::::${map['success']}');
                print('response:::::::::::::::::${jsonDecode(response.body)['success']}');
                print('response:::::::::::::::::${jsonEncode(response.body)}');*/
      login_Model userDataSuccess =
      login_Model.fromJson(jsonDecode(response.body));
      print(userDataSuccess);
      loginResult = userDataSuccess.result;
      setState(() {

      });
      //print(userDataSuccess.success);
    } catch (e) {
      print(e);
    }
  }
}
