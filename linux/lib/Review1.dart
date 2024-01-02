import 'package:flutter/material.dart';
import 'package:kanku/Details.dart';
import 'package:kanku/payment.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Container(
            height: 100,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x0C000000),
                  blurRadius: 25,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Price\n',
                          style: TextStyle(
                            color: Color(0xFF2F4858),
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,

                          ),
                        ),
                        TextSpan(
                          text: '\$ 659.00',
                          style: TextStyle(
                            color: Color(0xFF59BFAC),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => payment_page()));
                    },
                      child: Container(
                        width: 164,
                        height: 60,
                        padding: const EdgeInsets.all(20),
                        decoration: ShapeDecoration(
                          color: Color(0xFF2F4858),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x26082822),
                              blurRadius: 40,
                              offset: Offset(0, 16),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Book',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,

                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.asset('assets/images/img_35.png', width: double.infinity),
      Padding(
        padding: const EdgeInsets.only(top: 25, left: 35),
        child: Text(
          'Astoria Current',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
            height: 0.06,
          ),
        ),
      ),
      SizedBox(
        height: 25,
      ),
      Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Row(children: [
            Image.asset('assets/images/img_25.png'),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PLOT NO 34 GF, Scheme No.54, Sector G, Vijay Nagar,  ',
                    style: TextStyle(fontSize: 10),
                  ),
                  Row(
                    children: [
                      Text(
                        'Indore, Madhya Pradesh 452010',
                        style: TextStyle(fontSize: 10),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'View more',
                          style: TextStyle(fontSize: 10, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ])),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Divider(
          height: 2,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Row(
          children: [
            Image.asset(
              'assets/images/img_36.png',
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Carter Schleifer',
                    style: TextStyle(
                      color: Color(0xFF0C0C0C),
                      fontSize: 30,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      height: 0.03,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Johan Smiths',
                      style: TextStyle(
                        color: Color(0xFF0C0C0C),
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0.09,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Divider(
          height: 2,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 35, top: 15),
        child: Row(
          children: [
            Text(
              'Details',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w700,
                height: 0.08,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Text(
                'Review',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  height: 0.08,
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reviews',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Text(
                'See All',
                style: TextStyle(
                  color: Color(0xFF59BFAC),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0.17,
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 25,
      ),
      containerMethod(
          image: 'assets/images/img_37.png', text: 'Lincoln Vetrovs'),
                  containerMethod(image: 'assets/images/img_38.png', text: 'Ruben Philips'),
                  containerMethod(image: 'assets/images/img_39.png', text: 'Wilson Korsgaard')
    ])));
  }

  containerMethod({required String image, required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        image,
                        height: 45,
                        width: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          text,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Image.asset('assets/images/img_41.png'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              child: SizedBox(
                height: 49,
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Amet non elementum fermentum eu non nisi vestibulum. Lectus phasellus libero hendrerit nibh euismod arcu at. Egestas lacinia ut hendrerit etiam id sollicitudin.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Color(0xFF677294),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
