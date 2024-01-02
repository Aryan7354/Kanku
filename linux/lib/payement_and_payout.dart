import 'package:flutter/material.dart';
import 'package:kanku/payment_method.dart';

class Payement_and_Payout extends StatefulWidget {
  const Payement_and_Payout({super.key});

  @override
  State<Payement_and_Payout> createState() => _Payement_and_PayoutState();
}

class _Payement_and_PayoutState extends State<Payement_and_Payout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Payments and payouts',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  height: 0.05,
                  letterSpacing: 0.25,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Traveling',
                style: TextStyle(
                  color: Color(0xFF8A8A8A),
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            listtileMethod(trailimage: 'assets/images/img_91.png', titletext: 'Delete your account',),
            SizedBox(
              height: 20,
            ),
            listtileMethod(trailimage: 'assets/images/img_92.png', titletext: 'Your payment',ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Payment_Methods()));
            })
            

          ],
        ),
      ),
    );
  }
  listtileMethod({required String trailimage,required String titletext, VoidCallback? ontap}){
    return GestureDetector(onTap: ontap,
      child: ListTile(
        leading: Image.asset(trailimage,height: 32,),
        title: Text(titletext,style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
        ),
        trailing: Image.asset('assets/images/img_62.png',height: 20,),
      ),
    );
  }
}
