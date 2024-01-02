import 'package:flutter/material.dart';
import 'package:kanku/Review1.dart';
import 'package:kanku/payment.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
                              style:
                                  TextStyle(fontSize: 10, color: Colors.blue),
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Review()));
                    },
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
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 35),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Eu mattis neque quisque porta. Leo euismod varius massa sodales enim risus. Arcu risus quis rutrum quis. Integer porta sit molestie elementum. Nibh aliquam sed quisque sed in vulputate. Porta egestas nunc aliquet fringilla sed fringilla nunc amet.\nAc blandit placerat id feugiat feugiat. Felis blandit amet magna sodales lobortis rutrum turpis. Tellus leo lacinia quam quis lectus.',
                style: TextStyle(
                  color: Color(0xFF4A4A4A),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: Image.asset('assets/images/img_42.png'),
          ),
        ])));
  }
}
