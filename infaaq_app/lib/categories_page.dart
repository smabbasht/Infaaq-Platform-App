import 'package:flutter/material.dart';
import 'cases_display_page.dart';




class CategoriesPage extends StatelessWidget {

  CategoriesPage({super.key});
  
  final List indexCategory = ['Education','Medical','House','Food','Loan Repayment','Religious'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(top:15.0),
                itemCount: indexCategory.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {

                      },
                      child: Card(
                        child: ListTile(
                          title: Text(indexCategory[index].toString(), style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 25.0, letterSpacing: 2.0)),
                          onTap: (){    
                            Navigator.push(context,MaterialPageRoute(builder: ((context) => CaseDisplayPage(index: index,)),));
                          },
                          trailing: const SizedBox(
                            height: 100.0,
                            width: 70.0,
                            child: Center(
                              child: Icon(Icons.arrow_forward_ios_sharp),
                            ),
                          ),
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
