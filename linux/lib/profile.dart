import 'package:flutter/material.dart';
import 'package:kanku/Become_A%20_Guided.dart';
import 'package:kanku/feedback.dart';
import 'package:kanku/list_your_tours.dart';
import 'package:kanku/payement_and_payout.dart';
import 'package:kanku/payment.dart';
import 'package:kanku/personal_information.dart';
import 'package:kanku/privacy.dart';
import 'package:kanku/privacy_policy.dart';
import 'package:kanku/taxes.dart';
import 'package:kanku/notification.dart';
import 'package:kanku/terms_and_conditions.dart';
import 'package:kanku/trans.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  List enteries = [
    {
      'leading': 'assets/images/img_55.png',
      'title': 'Personal Information',
      'trailing': 'assets/images/img_62.png'
    },
    {
      'leading': 'assets/images/img_56.png',
      'title': 'Become a guided',
      'trailing': 'assets/images/img_62.png'
    },
    {
      'leading': 'assets/images/img_57.png',
      'title': 'Payments and payouts',
      'trailing': 'assets/images/img_62.png'
    },
    {
      'leading': 'assets/images/img_58.png',
      'title': 'Taxes',
      'trailing': 'assets/images/img_62.png'
    },
    {
      'leading': 'assets/images/img_71.png',
      'title': 'Translation',
      'trailing': 'assets/images/img_62.png'
    },
    {
      'leading': 'assets/images/img_60.png',
      'title': 'Notifications',
      'trailing': 'assets/images/img_62.png'
    },
    {
      'leading': 'assets/images/img_71.png',
      'title': 'Privacy and Sharing',
      'trailing': 'assets/images/img_62.png'
    },
  ];
  List enteries2 = [
    {
      'leading': 'assets/images/img_65.png',
      'title': 'List your Tour',
      'trailing': 'assets/images/img_62.png'
    },
    {
      'leading': 'assets/images/img_66.png',
      'title': 'Learn about Become Guide',
      'trailing': 'assets/images/img_62.png'
    }
  ];
  List enteries3 = [
    {
      'leading': 'assets/images/img_67.png',
      'title': 'Visit the Help Centre',
      'trailing': 'assets/images/img_62.png'
    },
    {
      'leading': 'assets/images/img_68.png',
      'title': 'Give us feedback',
      'trailing': 'assets/images/img_62.png'
    }
  ];
  List enteries4 = [
    {
      'leading': 'assets/images/img_69.png',
      'title': 'Terms of Service',
      'trailing': 'assets/images/img_62.png'
    },
    {
      'leading': 'assets/images/img_69.png',
      'title': 'Privacy Policy',
      'trailing': 'assets/images/img_62.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 0.03,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Image.asset("assets/images/img_54.png"),
              title: Text(
                "Johan Smiths",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Show Profile",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              trailing: SizedBox(
                  height: 12, child: Image.asset("assets/images/img_62.png")),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Divider(
                thickness: 1.0,
                color: Color(0xffE3E3E3),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.03,
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: enteries.length,
                  itemBuilder: (context, index) => ListTile(
                        onTap: () => nextpageMethod(index, context),
                        leading: SizedBox(
                            height: 24,
                            child: Image.asset(
                              enteries[index]['leading'].toString(),
                            )),
                        title: Text(enteries[index]['title'].toString()),
                        trailing: SizedBox(
                            height: 12,
                            child: Image.asset(
                                enteries[index]['trailing'].toString())),
                      )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
            SizedBox(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: enteries2.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () => nextpageMethod3(index, context),
                  leading: SizedBox(
                      height: 24,
                      child:
                          Image.asset(enteries2[index]['leading'].toString())),
                  title: Text(enteries2[index]['title'].toString()),
                  trailing: SizedBox(
                      height: 12,
                      child:
                          Image.asset(enteries2[index]['trailing'].toString())),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Text(
                'Support',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.03,
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: enteries3.length,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () => nextpageMethod4(index, context),
                        leading: SizedBox(
                            height: 24,
                            child: Image.asset(
                                enteries3[index]['leading'].toString())),
                        title: Text(enteries3[index]['title'].toString()),
                        trailing: SizedBox(
                            height: 12,
                            child: Image.asset(
                                enteries3[index]['trailing'].toString())),
                      )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                'Legal',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.03,
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: enteries4.length,
                  itemBuilder: (context, index) => ListTile(
                        onTap: () => nextpageMethod2(index, context),
                        leading: SizedBox(
                            height: 24,
                            child: Image.asset(
                                enteries4[index]['leading'].toString())),
                        title: Text(enteries4[index]['title'].toString()),
                        trailing: SizedBox(
                            height: 12,
                            child: Image.asset(
                                enteries4[index]['trailing'].toString())),
                      )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Container(
                width: 382,
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/img_70.png",
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Log out',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xff2F4858),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  nextpageMethod(int index, BuildContext context) {
    switch (index) {
      case 0:
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => personal_information()));
        }
        break;
      case 1:
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => preview()));
        }
        break;
      case 2:
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Payement_and_Payout()));
        }
        break;
      case 3:
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Taxes()));
        }
        break;
      case 4:
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Translation()));
        }
        break;
      case 5:
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Notifications()));
        }
        break;
      case 6:
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Privacy_and_Sharing()));
        }
        break;
    }
  }

  nextpageMethod2(int index, BuildContext context) {
    switch (index) {
      case 0:
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Terms()));
        }
        break;

      case 1:
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Privacy_policy()));
        }
        break;
    }
  }

  nextpageMethod3(int index, BuildContext context) {
    switch (index) {
      case 0:
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => List_your_Tours()));
        }
        break;
    }
  }
  nextpageMethod4(int index, BuildContext context) {
    switch (index) {
      case 0:
        {

        }
        break;
      case 1:
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Travel_For_Work()));
        }
        break;
    }
    }
  }

