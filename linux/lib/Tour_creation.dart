import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kanku/Add_site.dart';

class Tour_Creation extends StatefulWidget {
  const Tour_Creation({super.key});

  @override
  State<Tour_Creation> createState() => _Tour_CreationState();
}

class _Tour_CreationState extends State<Tour_Creation> {
  File? _SelectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              'Tour Creation',
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
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Add_Site()));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Container(
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
                  'Add Site',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            textFieldMethod(
                hinttext: 'Tour Name',
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                maxlines: 1),
            textFieldMethod(
                hinttext: 'General Description',
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                maxlines: 5),
            textFieldMethod(
                hinttext: 'Price',
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                maxlines: 1),
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
                    GestureDetector(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: _SelectedImage != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                File(_SelectedImage!.path),
                                height: 50,
                                width: 100,
                                fit: BoxFit.cover,
                              ))
                          : Image.asset(
                              'assets/images/img_96.png',
                              height: 24,
                            ),
                    ),
                    Text(
                      'Main photos',
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
      ),
    );
  }

  textFieldMethod(
      {required String hinttext,
      required EdgeInsets padding,
      required int maxlines}) {
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

  _pickImageFromGallery() async {
    XFile? returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage != null) {
      setState(() {
        _SelectedImage = File(returnedImage.path);
      });
    }
  }
}

