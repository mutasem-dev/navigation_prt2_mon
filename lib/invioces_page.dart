import 'package:flutter/material.dart';
import 'package:untitled7/main.dart';

import 'details_page.dart';
import 'invoice.dart';
class InvoicesPage extends StatelessWidget {
  static int invIndex=0;

  const InvoicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Customers'),
      ),
      body: ListView.builder(
        itemCount: MainPage.invoices.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                invIndex = index;
                Navigator.pushNamed(context, '/detailsPage');
              },
              tileColor: Colors.blueAccent,
              leading: Text(MainPage.invoices[index].customerName,style: TextStyle(fontSize: 22),),
            ),
          ),
      ),
    );
  }
}
