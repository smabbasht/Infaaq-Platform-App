import 'package:flutter/material.dart';
import 'components/top_bar.dart';


class Dashboard extends StatelessWidget{
  
  Dashboard({super.key});

@override
Widget build(BuildContext context){
  
  return Scaffold(
    backgroundColor: Colors.grey[100],
    body: Column(
      children: [
        TopBar(),
      ],)
  );
}
}