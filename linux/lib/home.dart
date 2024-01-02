import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kanku/Review1.dart';
import 'package:kanku/Details.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List enteries = [
    {'title': 'assets/images/img_15.png', 'date': 'Goa'},
    {'title': 'assets/images/img_16.png', 'date': 'Dubai'},
    {'title': 'assets/images/img_17.png', 'date': 'Bangalore'},
    {'title': 'assets/images/img_18.png', 'date': 'Trips'},
    {'title': 'assets/images/img_19.png', 'date': 'trips'},
  ];


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.blueGrey),
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                prefixIcon: Icon(Icons.search, color: Colors.blueGrey),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/img_14.png',
                    height: 5,
                  ),
                ),
                hintText: 'Search ...',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: enteries.length,
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Column(
                      children: [
                        Image.asset(
                          enteries[index]['title'].toString(),
                          height: 100,
                        ),
                        Text(enteries[index]['date'].toString())
                      ],
                    )),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 2,
                            offset: Offset(5, 4), // Shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Image.asset(
                              'assets/images/img_29.png',
                              // height: 262,
                              fit: BoxFit.cover,
                            ),
                          ),
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
                            child: Row(
                              children: [
                                Image.asset('assets/images/img_25.png'),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'PLOT NO 34 GF, Scheme No.54, Sector G, Vijay Nagar, Indore, Madhya Pradesh 452010 ',
                                      style: TextStyle(
                                        color: Color(0xFF474B51),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
                                },
                                  child: Text('View More',
                                      style: TextStyle(
                                        color: Color(0xFF59BFAC),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/img_34.png',
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  '\$ 659.00',
                                  style: TextStyle(
                                    color: Color(0xFF59BFAC),
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
