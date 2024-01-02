import 'package:flutter/material.dart';

class inbox extends StatefulWidget {
  const inbox({super.key});

  @override
  State<inbox> createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  List enteries=[
    {'leading':'assets/images/img_49.png','title':'Cooper Septimus','subtitle':'Typing...','date':'assets/images/img_53.png','trailing':'08:00am'},
    {'leading':'assets/images/img_50.png','title':'Maria Philips','subtitle':'Lorem ipsum dolor sit amet','date':'','trailing':'08:00am'},
    {'leading':'assets/images/img_51.png','title':'Kierra Curtis','subtitle':'Lorem ipsum dolor sit amet','date':'','trailing':'08:00am'},
    {'leading':'assets/images/img_52.png','title':'Dulce Press','subtitle':'Lorem ipsum dolor sit amet','date':'','trailing':'08:00am'},

  ];
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
              padding: const EdgeInsets.only(left: 35,top: 10),
              child: Text(
                'Inbox',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.03,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.search,color: Colors.blue,),
                  hintText: 'Search ...'
                ),

              ),
            ),
            SizedBox(
              child: ListView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap: true,
                  itemCount:  enteries.length,
                  itemBuilder: (context, index) => Column(

                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          ListTile(

                            leading: Image.asset(enteries[index]['leading'].toString()),
                            title: Text(enteries[index]['title'].toString()),
                            trailing: Text(enteries[index]['trailing'].toString()),
                            subtitle: Row(
                              children: [
                                Text(enteries[index]['subtitle'].toString()),
                                if(enteries[index]['date'].toString().isNotEmpty)
                                  Image.asset(enteries[index]['date'].toString())


                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Divider(
                              thickness: 0.9,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
