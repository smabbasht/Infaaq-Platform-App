import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/donatePage_button.dart';

class DonatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              fontSize: 28.0,
              fontWeight: FontWeight.w500,
            ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            DonateButton(
              headingText: 'Donate to an organization',
              subText: 'You can donate to any partner organization',
            ),
            const SizedBox(
              height: 25.0,
            ),
            DonateButton(
              headingText: 'Donate to us',
              subText: 'You can donate to our verified cases',
            ),
            const SizedBox(
              height: 25.0,
            ),
            DonateButton(
              headingText: 'Random Case Selection',
              subText: 'We will find a case for you',
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
