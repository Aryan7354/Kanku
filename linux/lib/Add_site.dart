import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_Site extends StatefulWidget {
  const Add_Site({super.key});

  @override
  State<Add_Site> createState() => _Add_SiteState();
}

class _Add_SiteState extends State<Add_Site> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  'Add Site',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Add_Site()));
      },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 56,
                    decoration: ShapeDecoration(
                      color: Color(0xFF2F4858),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Add  Another Site',
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
                      color: Color(0xFF2F4858),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Finish Tour',
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
        ),
      ),


          body: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              textFieldMethod(
                  hinttext: 'Site Name',
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  ),
                  maxlines: 1),
              textFieldMethod(
                  hinttext: 'Site Loacation',
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  maxlines: 1,suffixicon: CupertinoIcons.location_solid),
              textFieldMethod(
                  hinttext: 'Site Description',
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  maxlines: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: double.infinity,
                  height: 110,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF7F8F8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/img_96.png',
                            height: 24,
                          ),
                          Text(
                            'Audios, Photos, Videos of the site',
                            style: TextStyle(
                              color: Color(0xFFACA3A5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      )),
                ),
              ),

            ],
          ),
        );
  }
  textFieldMethod(
      {required String hinttext,
        required EdgeInsets padding,
        required int maxlines,IconData? suffixicon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Align(
        alignment: Alignment.topLeft,
        child: TextField(
          decoration: InputDecoration(
            fillColor: Color(0xFFF7F8F8),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            contentPadding: padding,
            hintText: hinttext,
            suffixIcon: Icon(suffixicon),
            hintStyle: TextStyle(
              color: Color(0xFFACA3A5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          maxLines: maxlines,
        ),
      ),
    );
  }
}
