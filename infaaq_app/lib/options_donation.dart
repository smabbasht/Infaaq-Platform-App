import 'package:flutter/material.dart';
import 'package:infaaq_app/organization_page.dart';
import 'components/donate_page_button.dart';
import 'categories_page.dart';

class OptionsDonatePage extends StatelessWidget {

  const OptionsDonatePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Who do you want to donate?',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
            ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            DonateButton(
              headingText: 'Donate to an organization',
              subText: 'You can donate to our partner organization',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) =>  const OrganizationPage()),),);
              },
            ),
            const SizedBox(
              height: 25.0,
            ),
            DonateButton(
              headingText: 'Donate to us',
              subText: 'You can donate to our verified cases',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) =>  CategoriesPage()),),);
              },
            ),
            const SizedBox(
              height: 25.0,
            ),
            DonateButton(
              headingText: 'Random Case Selection',
              subText: 'We will find a case for you',
              onTap: () {
                
              },
            ),
            const SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
