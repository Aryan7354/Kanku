import 'package:flutter/material.dart';

class wishlist extends StatefulWidget {
  const wishlist({super.key});

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
bool isImage= true;
void toggleImage() {
  setState(() {
    isImage = !isImage;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Padding(
              padding: const EdgeInsets.only(left: 35,top: 20),
              child: Text(
                'Wishlist',
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
              height: 20,
            ),

            containersMethod(image: 'assets/images/img_43.png'),
            containersMethod(image: 'assets/images/img_44.png'),
            containersMethod(image: 'assets/images/img_45.png'),
            containersMethod(image: 'assets/images/img_46.png')
          ],
        ),
      ),

    );
  }
  containersMethod({required String image}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(image,height: 130,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 34),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Astoria Current',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          height: 0.06,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Row(
                          children: [
                            Image.asset('assets/images/img_48.png',height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                'PLOT NO 34 GF, Scheme No...',
                                style: TextStyle(
                                  color: Color(0xFF474B51),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.16,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          '\$ 659.00',
                          style: TextStyle(
                            color: Color(0xFF59BFAC),
                            fontSize: 19,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w700,
                            height: 0.07,
                          ),
                        ),
                      )
                    ],
                  ),
                ) ,

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25,top: 25),
              child: GestureDetector(onTap: toggleImage,

                  child: isImage?  Image.asset('assets/images/img_47.png',height: 24,):Image.asset('assets/images/closeheart.png',width: 24,color: Colors.black,))
            )
          ],
        ),

      ),
    );
  }

}
