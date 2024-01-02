import 'package:flutter/material.dart';

class preview extends StatefulWidget {
  const preview({super.key});

  @override
  State<preview> createState() => _previewState();
}

class _previewState extends State<preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Preview",style: TextStyle(
              fontSize: 18,fontWeight: FontWeight.w600
          ),),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:           Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 60,
          child: Center(
            child: Text("Publish Tour",style: TextStyle(
                fontSize: 17,fontWeight: FontWeight.w700,color: Colors.white
            ),),
          ),
          decoration: BoxDecoration(
              color: Color(0xff2F4858),
              borderRadius: BorderRadius.circular(50)
          ),
        ),
      ),

      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            textMethod(text: 'Goa'),
            textMethod(text: "\$ 100.00"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Image.asset('assets/images/Group 9858.png',width: double.infinity,),
            ),
            containerMethod(image: 'assets/images/img_43.png'),
            containerMethod(image: 'assets/images/img_44.png'),
            containerMethod(image: 'assets/images/img_45.png'),
          ],
        ),
      ),
      ),
    );
  }
  containerMethod({required String image}){
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(image,height: 68,width: 72,),
            title: Text('Astoria Current',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            subtitle: Row(
              children: [
                Image.asset('assets/images/img_74.png',height: 24,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('PLOT NO 34 GF, Scheme No...',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Divider(
              thickness: 1.0,color: Color(0xffE7E7E7),
            ),
          )
        ],
      ),
    );
  }
  textMethod({required String text}){
    return           Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 56,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(text,style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,
          ),),
        ),
        decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(14)
        ),
      ),
    );


  }
}
