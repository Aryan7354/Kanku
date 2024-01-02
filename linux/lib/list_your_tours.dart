import 'package:flutter/material.dart';
import 'package:kanku/Tour_creation.dart';

class List_your_Tours extends StatefulWidget {
  const List_your_Tours({super.key});

  @override
  State<List_your_Tours> createState() => _List_your_ToursState();
}

class _List_your_ToursState extends State<List_your_Tours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              'List your tour',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
                height: 0.04,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 25,bottom: 25,right: 25),
        child: GestureDetector(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Tour_Creation()));
        },
          child: Container(
              height: 56,
              decoration: ShapeDecoration(
                color: Color(0xFF59BFAC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                  'Create Tour',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              tourMethod(image: 'assets/images/img_72.png'),
              tourMethod(image: 'assets/images/img_75.png'),
              tourMethod(image: 'assets/images/img_76.png'),

            ],
          ),
        ),
      ),
    );
  }

  tourMethod({required String image}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'African',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/images/img_74.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'PLOT NO 34 GF, Scheme No.54, Sector G, Vijay Nagar, Indore, Madhya Pradesh 452010 ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: 'View More',
                              style: TextStyle(
                                color: Color(0xFF59BFAC),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
