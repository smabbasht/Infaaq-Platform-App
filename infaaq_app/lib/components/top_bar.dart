import 'package:flutter/material.dart';

class TopBar extends StatelessWidget{

  TopBar({super.key});

@override
Widget build (BuildContext context){
  return Container(
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.blue[900],
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(30.0),
        bottomRight: Radius.circular(30.0),
      )
    ),
    child: Column(
      children: <Widget> [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                
                GestureDetector(
                  onTap: ((() => {Navigator.of(context).pop()})),
                  child: const CircleAvatar(
                    
                  ),
                ),

                SizedBox(width: 10.0,),

                Text('Hi, Muhammad Murtaza', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20.0)),
                
              ],
            ),
            const IconButton(onPressed: null, icon: Icon(Icons.notifications, color: Colors.white,)),
          ],
        ),
        const SizedBox(height: 30.0,),
        TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            fillColor: Colors.white,
            filled: true,
            suffixIcon: const Icon(Icons.filter_list),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          ),
        )
      ],
    )
  );
}

}

