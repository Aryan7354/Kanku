import 'package:flutter/material.dart';

class Taxes_Documents extends StatefulWidget {
  const Taxes_Documents({super.key});

  @override
  State<Taxes_Documents> createState() => _Taxes_DocumentsState();
}

class _Taxes_DocumentsState extends State<Taxes_Documents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Taxes",style: TextStyle(
              fontSize: 22,fontWeight: FontWeight.w600
          ),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tax documents required for filing taxes are available to review and download here.",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff8A8A8A)),),
                SizedBox(height: 10,),
                RichText(text: TextSpan(
                    text: "You can also file taxes using detailed earnings info, available in the",style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff8A8A8A)
                ),
                    children: <TextSpan>[
                      TextSpan(
                        text: " earnings summary",style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff59BFAC),decoration: TextDecoration.underline,
                          decorationColor: Color(0xff59BFAC)
                      ),
                      ),
                    ]
                ),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: Divider(
                    thickness: 1.0,color: Color(0xffE3E3E3),
                  ),
                ),
                listtileMethod(text: "2022"),
                listtileMethod(text: "2021"),
                listtileMethod(text: "2020"),
                listtileMethod(text: "2019"),
                listtileMethod(text: "2018"),
              ],
            ),
          ),
        ),
      ),
    );
  }
  listtileMethod({required String text}){
    return Column(
      children: [
        ListTile(
          title: Text(text,style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w700
          ),),
          subtitle: Text("No tax document issued",style: TextStyle(
              fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff8A8A8A)
          ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Divider(
            thickness: 1.0,color: Color(0xffE3E3E3),
          ),
        ),
      ],
    );
  }
}
