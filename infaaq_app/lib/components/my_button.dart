

import 'package:flutter/material.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class MyButton extends StatelessWidget{
  
  final void Function() onTap;
  final String btnName; 
  
  const MyButton({super.key, required this.onTap, required this.btnName});

@override
Widget build(BuildContext context){
  return GestureDetector(
    onTap: (() => {
      onTap()
      // if (btnName == 'Sign In'){
      // Navigator.push(context, MaterialPageRoute(builder: ((context) =>  Dashboard()),),)
      // }
    }),
    child: Container(
      height: 50,
      width: MediaQuery.of(context).size.width - 30,
      //padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        color: '#13274F'.toColor(),
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Center(
        child: Text(
          btnName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          ),
      ),
    ),
  );
}
}