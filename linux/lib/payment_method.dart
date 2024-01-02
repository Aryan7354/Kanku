import 'package:flutter/material.dart';

class Payment_Methods extends StatefulWidget {
  const Payment_Methods({super.key});

  @override
  State<Payment_Methods> createState() => _Payment_MethodsState();
}

class _Payment_MethodsState extends State<Payment_Methods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment methods",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Add a payment method using our secure payment system, then start planning your next trip.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8A8A8A)),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 244,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 25),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/img_90.png',
                                      height: 24,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Add payment method',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 40
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/images/img_93.png',height: 32,),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'PayPal',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/images/img_94.png',height: 32,),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Credit or debit card',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        );
                      });
                },
                child: Container(
                  height: 50,
                  width: 209,
                  child: Center(
                    child: Text(
                      "How you'll get paid",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
