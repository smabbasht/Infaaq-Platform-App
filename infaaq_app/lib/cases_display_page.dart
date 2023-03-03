import 'package:flutter/material.dart';
import 'components/case_display_box.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CaseDisplayPage extends StatelessWidget {
  final int index;
  final List indexCategory = [
    'Education',
    'Medical',
    'House',
    'Food',
    'Loan Repayment',
    'Religious'
  ];

  CaseDisplayPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> users = FirebaseFirestore.instance
        .collection('cases')
        .where('category', isEqualTo: indexCategory[index])
        .snapshots();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
        ),
        body: StreamBuilder<QuerySnapshot>(
            stream: users,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Text("Problem loading data");
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue[900],
                  ),
                );
              }
              final data = snapshot.requireData;
              if (data.size == 0) {
                return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                          "No cases available for this category at the moment",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 30.0, color: Colors.blue[900])),
                    ));
              }
              return ListView.builder(
                  itemCount: data.size,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {},
                        child: CaseBox(
                          title: "${data.docs[index]["Case Title"]}",
                          description: "${data.docs[index]["Description"]}",
                          amount: data.docs[index]["Amount Required"],
                        ));
                  });
            }));
  }
}
