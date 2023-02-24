import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
//import 'dart:async';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:path_provider/path_provider.dart';

class CircleImagePicker extends StatefulWidget {
  
  const CircleImagePicker({super.key});
  @override
  State<CircleImagePicker> createState() => _ImagePicker();
}

class _ImagePicker extends State<CircleImagePicker> {

  dynamic _image;

  Future getImage() async {
    
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    
    if (image == null) return;

    final imageTemp = File(image.path);

    setState(() {
      _image = imageTemp;
    });
    
    // Reference referenceRoot = FirebaseStorage.instance.ref();
    // Reference referenceDirImages = referenceRoot.child('images');
    // Reference referenceImageToUpload = referenceDirImages.child('${image.path}');
    
    // try{
    
    // referenceImageToUpload.putFile(File(image.path));

    // } catch(e){
     
    //   return;
    
    // }
    

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        getImage();
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: _image != null ? FileImage(_image) as ImageProvider : const AssetImage('assets/images/profile_avatar.png',),
      ),
    ),
      ),
    );
  }
}
