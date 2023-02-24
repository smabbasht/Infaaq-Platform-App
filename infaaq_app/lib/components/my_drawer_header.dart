import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget{

  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
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
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile_pic.jpg'),
                    ),
                    ),
                  ),
                  
                  const Text("Muhammad Murtaza", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                  
                  Text('mm06369@st.habib.edu.pk', style: TextStyle(color: Colors.grey[200]),)
                
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