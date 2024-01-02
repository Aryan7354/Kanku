import 'package:flutter/material.dart';

class Privacy_and_Sharing extends StatefulWidget {
  const Privacy_and_Sharing({super.key});

  @override
  State<Privacy_and_Sharing> createState() => _Privacy_and_SharingState();
}

class _Privacy_and_SharingState extends State<Privacy_and_Sharing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("Privacy and sharing",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w700
                ),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("Manage your data, third-party tools and sharing settings",style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff8A8A8A)
                ),),
              ),
              listtileMethod(titletext: "Request your personal data", subtitletext: "We'll create a file for you to download your personal data."),
              listtileMethod(titletext: "Delete your account", subtitletext: "This will permanently delete your account and your data, in accordance with applicable law."),
              listtileMethod(titletext: "Sharing", subtitletext: "Decide how your profile and activity are shown to others"),
              listtileMethod(titletext: "Services", subtitletext: "Check out and manage services that you've connected to your eTornus account"),
            ],
          ),
        ),
      ),
    );
  }
  listtileMethod({required String titletext, required String subtitletext}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              titletext,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600
              ),
            ),
            subtitle: Text(
              subtitletext,
              style: TextStyle(
                color: Color(0xff8E8E8E), fontSize: 12, fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Image.asset(
              'assets/images/img_62.png',
              height: 24,
            ),
          ),
          Divider(
            thickness: 1.0,color: Color(0xffE3E3E3),
          ),
        ],
      ),
    );
  }

}
