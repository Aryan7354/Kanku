import 'package:flutter/material.dart';

class booking extends StatefulWidget {
  const booking({super.key});

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Center(
                child: Text(
                  'Booking',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                    height: 0.04,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                alignment: Alignment.bottomCenter,
                height: 56,
                decoration: ShapeDecoration(
                  color: Color(0xFF2F4858),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Center(
                  child: Text(
                    'View Booking',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.bottomCenter,
                height: 56,
                decoration: ShapeDecoration(
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(child: Image.asset("assets/images/Booking Success (2).png",height: 200,)),
            SizedBox(height: 35,),
            Text(
              'Congratulations!',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 22,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Lorem ipsum dolor sit amet consectetur. Nam turpis\nnunc mauris dignissim lorem lacus nunc. Aliquam urna.",style: TextStyle(
                  fontSize: 13,fontWeight: FontWeight.w400,fontFamily: 'Lato',color: Color(0xff9E9FA5)
              ),textAlign: TextAlign.center,),
            ),


          ],
        ),
      ),
    );
  }
}
