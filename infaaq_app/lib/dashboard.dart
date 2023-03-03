import 'package:flutter/material.dart';
import 'package:infaaq_app/components/my_drawer_header.dart';
import 'components/top_bar.dart';
import 'components/amount_widget.dart';
import 'components/dashboard_button.dart';
import 'options_donation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key, required this.id});

  final String? id;
  // String? personName;

  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  _Dashboard();
  String? id;
  String personName = 'NULL';
  String imageURL = 'NULL';
  String email = 'NULL';
  bool isloading = true;
  late int amount;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final documentReference = FirebaseFirestore.instance.collection('users');

  Future getUserData() async {
    Map<String, dynamic>? userData = {};

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(id)
          .get()
          .then((value) {
        userData = value.data();
        personName = userData?['Name'];
        imageURL = userData?['imageURL'];
        amount = userData?['Amount Donated'];
        email = userData?['Email'];

        setState(
          () {
            isloading = false;
          },
        );
      });
    } on FirebaseException catch (e) {
      return;
    }
  }

  @override
  void initState() {
    id = widget.id;
    getUserData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
          children: [
            MyHeaderDrawer(
              imageURL: imageURL,
              name: personName,
              email: email,
            ),
          ],
        )),
        key: _scaffoldKey,
        backgroundColor: Colors.grey[200],
        body: isloading
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.blue[900],
                ),
              )
            : SafeArea(
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopBar(
                          scaffoldKey: _scaffoldKey,
                          name: personName,
                          imageURL: imageURL,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: const Text(
                              'YOUR DONATIONS',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w500),
                            )),
                        const SizedBox(
                          height: 25.0,
                        ),
                        AmountWidget(
                          amount: amount.toString(),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        // Container(
                        //     alignment: Alignment.center,
                        //     margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                        //     width: 500,
                        //     height: 400,
                        //     //padding: const EdgeInsets.all(20.0),
                        //     decoration: BoxDecoration(
                        //         color: Colors.grey[200],
                        //         borderRadius: BorderRadius.circular(15.0)),
                        //     child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                DashboardButton(
                                  imagePath: 'assets/images/donate_now.png',
                                  buttonName: 'Donate Now',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) =>
                                            const OptionsDonatePage()),
                                      ),
                                    );
                                  },
                                ),
                                DashboardButton(
                                    onTap: () {},
                                    buttonName: 'Wallet',
                                    imagePath:
                                        'assets/images/payment_gateway.png'),
                              ],
                            ),
                            const SizedBox(
                              height: 50.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                DashboardButton(
                                    onTap: () {},
                                    buttonName: 'Settings',
                                    imagePath: 'assets/images/settings.png'),
                                DashboardButton(
                                    onTap: () {},
                                    buttonName: 'About us',
                                    imagePath: 'assets/images/about_us.png')
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ));
  }
}
