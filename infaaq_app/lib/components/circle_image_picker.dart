import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleImagePicker extends StatefulWidget {
  
  CircleImagePicker({super.key});
  @override
  _ImagePicker createState() => _ImagePicker();
}

class _ImagePicker extends State<CircleImagePicker> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50.0,
      backgroundColor: Colors.grey[200],
    );
  }
}
