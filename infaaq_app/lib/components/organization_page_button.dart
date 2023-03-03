

import 'package:flutter/material.dart';


class OrganizationButton extends StatelessWidget{

  final String imagePath;
  const OrganizationButton({super.key, required this.imagePath});

@override
Widget build (BuildContext context){
  return SizedBox(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          onPressed: (() {
            
          }),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(imagePath)
            ),
          ),
      ),
    );
}
}