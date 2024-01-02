import 'package:flutter/material.dart';
import 'package:kanku/Model/api_methods.dart';
import 'package:http/http.dart' as http;
import 'package:kanku/Model/user_model.dart';

class personal_information extends StatefulWidget {
  const personal_information({super.key});

  @override
  State<personal_information> createState() => _personal_informationState();
}

class _personal_informationState extends State<personal_information> {
  UserModel? userModel;

  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Pesonal Information",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: user != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  textFormFieldmethod(
                    controller: TextEditingController(text: user!.fullName != null && user!.fullName!.isNotEmpty
                        ? user!.fullName!
                        : ''),
                      hinttext: 'Legal name',
                      labeltext: 'Legal name',
                      suffixicon: 'assets/images/img_82.png'),
                  textFormFieldmethod(
                      hinttext: '+91******1387',
                      labeltext: 'Phone number',
                      suffixicon: 'assets/images/img_82.png'),
                  textFormFieldmethod(
                      hinttext: 'mailto:s***o@gmail.com',
                      labeltext: 'Email',
                      suffixicon: 'assets/images/img_82.png'),
                  textFormFieldmethod(
                      hinttext: 'PLOT NO 34 GF, Scheme No.54, ...',
                      labeltext: 'Address',
                      suffixicon: 'assets/images/img_82.png'),
                  textFormFieldmethod(
                      hinttext: 'Johan Smiths',
                      labeltext: 'Emergency contact',
                      suffixicon: 'assets/images/img_83.png'),
                  textFormFieldmethod(
                      hinttext: 'Johan Smiths',
                      labeltext: 'Government ID',
                      suffixicon: 'assets/images/img_83.png'),
                  textFormFieldmethod(
                      hinttext: 'Johan Smiths',
                      labeltext: 'Legal name',
                      suffixicon: 'assets/images/img_83.png'),
                ],
              )
            : const SizedBox(),
      ),
    );
  }

  textFormFieldmethod(
      {required String hinttext,
      required String labeltext,
      required String suffixicon,
      TextEditingController? controller}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: TextFormField(
        cursorColor: Colors.black,
        controller: controller,
        decoration: InputDecoration(
            fillColor: Color(0xffF7F8F8),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            labelText: labeltext,
            labelStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
            hintText: hinttext,
            hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff8E8E8E)),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                suffixicon,
                height: 24,
                width: 24,
              ),
            )),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  Future<void> apiCall() async {
    userModel = await ApiMethods.userData(userId: '12');
    if (userModel != null && userModel!.user != null) {
      user = userModel!.user;
      setState(() {});
    }
  }
}
