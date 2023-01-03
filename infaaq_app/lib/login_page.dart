

import 'package:flutter/material.dart';
import 'components/text_field.dart';
import 'components/my_button.dart';

class LoginPage extends StatelessWidget{

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

void signUserIn(){}

@override 
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.grey[300],
    body: SafeArea(
      child: Column(
        children: <Widget> [
          
          //logo
            const SizedBox(height: 50,),
            const Center(child: Icon(Icons.lock, size:100)),
          
          //welcome back, you've been missed
            const SizedBox(height: 50,),
            Text('Welcome back, you\'ve been missed',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16
            ),
            ),
            const SizedBox(height: 25.0,),

            //username

          MyTextField(
            fieldName: 'Username',
            obscureText: false,
            controller: _emailController,
          ),

          const SizedBox(height: 15.0,),
          //password
          MyTextField(
            fieldName: 'Password',
            obscureText: true,
            controller: _passwordController,
            ),

          //forgot password
          const SizedBox(height: 10.0,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                  ),
              ],
            ),
          ),
          //sign in btn
          const SizedBox(height: 25.0,),

          MyButton(onTap: signUserIn)

          //or continue with 
    
          //google sign in 
    
          //not a member
    
          //column
      ],),
    )
  );
}


}