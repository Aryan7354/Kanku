import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kanku/Model/TourModel.dart';
import 'package:http/http.dart' as http;

class tours extends StatefulWidget {
  const tours({super.key});

  @override
  State<tours> createState() => _toursState();
}

class _toursState extends State<tours> {
  List<TourResult> tourList = [];

  getTours() async {
    //final response=http.get(Uri.parse('https://dcmdmobilenotary.com/laravel/api/get_type_of_signing'));
    final response = await http.get(
        Uri.parse('https://api.kankuapp.com:8080/api/tours/all?user_id=6'));
    // Map<String,dynamic> data={
    //   'email':'',
    //   'password':''
    // };
    // final response = await http.post(Uri.parse('https://dcmdmobilenotary.com/laravel/api/get_type_of_signing'),
    // body: data);
    //

    TourModel result = TourModel.fromJson(jsonDecode(response.body));
    print("result is.........${result}");
    if (result.status == "1") {
      print("result is.........${tourList.length}");

      setState(() {
        tourList = result.tours;

      });
    } else {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTours();
    print("result is.........${tourList.length}");

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: tourList.isEmpty
          ? CircularProgressIndicator()
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 37, top: 20, bottom: 20),
                    child: Text(
                      'Tours',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.03,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      for (int i = 0; i < tourList.length; i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(tourList[i].toursImage.toString()),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: Text(
                                      tourList[i].toursName,
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
                                        padding:
                                            const EdgeInsets.only(left: 20),
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
                                                      tourList[i].toursLocation,
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
                        )
                    ],
                  )
                  // tourMethod(image: 'assets/images/img_72.png'),
                  // tourMethod(image: 'assets/images/img_75.png'),
                  // tourMethod(image: 'assets/images/img_76.png')
                ],
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
