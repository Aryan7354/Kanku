import 'package:flutter/material.dart';
import 'package:kanku/taxes_doc.dart';

class Taxes extends StatefulWidget {
  const Taxes({super.key});

  @override
  State<Taxes> createState() => _TaxesState();
}

class _TaxesState extends State<Taxes> {
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Taxpayers",style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w700
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Taxes_Documents()));
                      },
                        child: Text("Tax documents",style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                containerMethod(text1: "Taxpayer information", text2: "Tax info is required for most countries/regions. Learn more"),
                containerMethod(text1: "Value Added Tax (VAT)", text2: "If you are VAT-registered, please add your VAT ID. Learn more"),
                Text("Need help?",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w700
                ),),
                SizedBox(height: 10,),
                RichText(text: TextSpan(
                    text: "Get answers to questions about taxes in our",style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff8A8A8A)
                ),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Help Centre.",style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black
                      ),
                      ),
                    ]
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
  containerMethod({required String text1, required String text2}){
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1,style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w700
            ),),
            Text(text2,style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff8A8A8A)
            ),),
            SizedBox(height: 10,),
            Container(
              width: 150,
              height: 55,
              child: Center(
                child: Text("Add tax info",style: TextStyle(
                    fontSize: 17,fontWeight: FontWeight.w700,color: Colors.white
                ),),
              ),
              decoration: BoxDecoration(
                  color: Color(0xff2F4858),
                  borderRadius: BorderRadius.circular(30)
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              child: Divider(
                thickness: 1.0,color: Color(0xffE3E3E3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
