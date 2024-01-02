import 'package:flutter/material.dart';

class Travel_For_Work extends StatefulWidget {
  const Travel_For_Work({super.key});

  @override
  State<Travel_For_Work> createState() => _Travel_For_WorkState();
}

class _Travel_For_WorkState extends State<Travel_For_Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Share your feedback",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Container(
          width: double.infinity,
          height: 60,
          child: Center(
            child: Text(
              "Submit",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
              color: Color(0xff2F4858),
              borderRadius: BorderRadius.circular(50)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Thanks for sending us your ideas, issues, or appreciation. We can't respond individually, but we'll pass it on to the teams who are working to help make Airbnb better for everyone",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8A8A8A)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "If you do have a specific question or need help resolving a problem, you can visit our Help Centre or contact us to connect with our support team",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8A8A8A)),
              ),
              SizedBox(
                height: 15,
              ),
              textfieldMethod(
                  text: "What's your feedback about?",
                  hinttext: "Please select"),
              textfieldMethod(
                  text: "What topic or feature?",
                  hinttext: "Experience quality & communicatior"),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Add details",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    fillColor: Color(0xffF7F8F8),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 100, horizontal: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  textfieldMethod({required String text, required String hinttext}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, ),
            child: TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  fillColor: Color(0xffF7F8F8),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  hintText: hinttext,
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8E8E8E)),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/img_97.png"),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
