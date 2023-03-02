import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget{

  // final String name;
  // String imageURL;
  MyHeaderDrawer({super.key, this.imageURL = 'null', required this.name,this.email = 'mm06369@st.habib.edu.pk'});
  String imageURL;
  final String name;
  String email;
  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState(imageURL: imageURL, name:name, email: email);
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  
  // final String name;
  String imageURL;
  final String name;
  String email;

  _MyHeaderDrawerState({this.imageURL = '0', required this.name, this.email = 'mm06369@st.habib.edu.pk' });
  
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: Colors.blue[900],
            width: double.infinity,
            height: 200,
            padding: const EdgeInsets.only(top:20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(imageURL),
                    ),
                    ),
                  ),
                  
                  Text(name, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                  
                  Text(email, style: TextStyle(color: Colors.grey[200]),)
                
                ]),
            ),
            const SizedBox(height: 10.0,),
            
            TextButton(
              onPressed: ((() {
                Navigator.popUntil(context, (route) => route.isFirst);
              })), 
              child: Text('Logout', 
              style:TextStyle(
                fontSize: 25.0,
                color: Colors.red[500],
              ) ,
              ))
            
        ],
      ),
    );
  }
}