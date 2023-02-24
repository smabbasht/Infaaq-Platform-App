


import 'package:flutter/material.dart';
import 'components/organization_page_button.dart';


class OrganizationPage extends StatelessWidget{

  const OrganizationPage({super.key});

@override
Widget build (BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text('Select Categories', style: TextStyle(
        color: Colors.white
      ),),
      backgroundColor: Colors.blue[800],
    ),
    body: GridView.count(
    crossAxisCount: 2,
    children: const  [

      OrganizationButton(imagePath: 'assets/images/organization/siut_logo.png',),
      OrganizationButton(imagePath: 'assets/images/organization/tcf_logo.png',),
      OrganizationButton(imagePath: 'assets/images/organization/jdc_logo.png',),
      OrganizationButton(imagePath: 'assets/images/organization/akhuwat_logo.png',),
      OrganizationButton(imagePath: 'assets/images/organization/edhi_logo.png',),
      OrganizationButton(imagePath: 'assets/images/organization/wwf_logo.png',),
      OrganizationButton(imagePath: 'assets/images/organization/darulsukoon_logo.png',),
      OrganizationButton(imagePath: 'assets/images/organization/saylani_logo.jpg',),
      OrganizationButton(imagePath: 'assets/images/organization/indus_logo.png',),

  ],
)
  );
}

}