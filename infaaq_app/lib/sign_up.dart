


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/text_field.dart';
import 'components/my_button.dart';
import 'package:image_picker/image_picker.dart';
import 'components/circle_image_picker.dart';

class SignUp extends StatelessWidget{

final TextEditingController _nameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _confirmPasswordController = TextEditingController();

//ImagePicker _picker = ImagePicker();



@override
Widget build(BuildContext context){
  return Scaffold(
    body: ListView(
      children: [
        Container(
          //padding: const EdgeInsets.only(top: 80, left: 20),
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue[800],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0,),

                GestureDetector(
                  onTap: (() {
                    Navigator.of(context).pop();
                  }),
                  child: const Icon(Icons.arrow_back_ios,
                  color: Colors.white,
                  
                  ),
                ),
                
                const SizedBox(height: 30.0,),
                
                const Text('Create Account',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white, 
                   fontSize: 30.0,
                  fontWeight: FontWeight.w700
                ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30.0,),

        CircleImagePicker(),

        const SizedBox(height: 20.0,),

        MyTextField(fieldName: 'Name', controller: _nameController, obscureText: false),
        const SizedBox(height: 5.0,),
        MyTextField(fieldName: 'Email', controller: _emailController, obscureText: false),
        const SizedBox(height: 5.0,),
        MyTextField(fieldName: 'Password', controller: _passwordController, obscureText: true),
        const SizedBox(height: 5.0,),
        MyTextField(fieldName: 'Confirm Password', controller: _confirmPasswordController, obscureText: true),
        const SizedBox(height: 10.0,),
        MyButton(onTap: (){
          // Navigator.of(context).pop();
        }, btnName: 'Create'),
        const SizedBox(height: 5.0),

        



      ],)
  );
}
}