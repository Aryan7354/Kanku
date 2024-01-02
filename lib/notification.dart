import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
bool  switchValue1 = false;
bool  switchValue2 = false;
bool  switchValue3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              'Notification',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Offers and updates',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          height: 0.08,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                colomnMethod(
                    text: 'Travel tips and offers',
                    subtext:
                        'Inspire your next trip with personalised recommendations and special offers.'),
                SizedBox(
                  height: 20,
                ),
                textileMethod(titletext: 'Inspiration and offers'),
                textileMethod(titletext: 'Trip planning'),
                colomnMethod(
                    text: 'eTornus updates',
                    subtext:
                        'Stay up to date on the latest news from eTornus, and let us know how we can improve.'),
                textileMethod(titletext: 'News and programmes'),
                textileMethod(titletext: 'Feedback'),
                textileMethod(titletext: 'Travel regulations'),
                colomnMethod(
                    text: 'Unsubscribe from all offers and updates',
                    subtext: 'Unsubscribe from all offers and updates'),
                textileMethod(titletext: 'All offers and updates')
              ],
            ),
          ),
        ));
  }

  textileMethod({required String titletext}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              titletext,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            subtitle: Text(
              'On: Email, Push, and SMS',
              style: TextStyle(
                color: Color(0xFF8E8E8E),
                fontSize: 12,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            trailing: Image.asset(
              'assets/images/img_82.png',
              height: 24,

            ),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 35),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Image.asset(
                                      'assets/images/img_90.png',
                                      height: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 25),
                                    child: Text(
                                      'Inspiration and offers',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Inspiring stays, experiences, and deals.',
                                    style: TextStyle(
                                      color: Color(0xFF8A8A8A),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Email',
                                          style: TextStyle(
                                            color: Color(0xFF2F4858),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child: CupertinoSwitch(activeColor: Color(0xff59BFAC),
                                            value: switchValue1, onChanged: (value) {
                                              setState(() {
                                                switchValue1 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Push notifications',
                                          style: TextStyle(
                                            color: Color(0xFF2F4858),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child: CupertinoSwitch(activeColor: Color(0xff59BFAC),
                                            value: switchValue2, onChanged: (value) {
                                              setState(() {
                                                switchValue2 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'SMS',
                                          style: TextStyle(
                                            color: Color(0xFF2F4858),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child: CupertinoSwitch(activeColor: Color(0xff59BFAC),
                                            value: switchValue3, onChanged: (value) {
                                              setState(() {
                                                switchValue3 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  });
            },
          ),
          Divider(
            thickness: 0.7,
          )
        ],
      ),
    );
  }

  colomnMethod({required String text, required String subtext}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.25,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              subtext,
              style: TextStyle(
                color: Color(0xFF8A8A8A),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.25,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
