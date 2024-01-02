import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Translation extends StatefulWidget {
  const Translation({super.key});

  @override
  State<Translation> createState() => _TranslationState();
}

class _TranslationState extends State<Translation> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text("Translation",style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.w600
            ),),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Translation",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 10,),
              Text("Automatically translate the reviews, descriptions and messages written by guests and Hosts to English. Turn this feature off if you'd like to show the original language.",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff8A8A8A)),),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Translation",style: TextStyle(
                      fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff2F4858)
                  ),),
                  CupertinoSwitch(activeColor: Color(0xff59BFAC),
                    value: switchValue, onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
