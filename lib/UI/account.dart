import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(
            child: Column(
              children: [Text('Hi User'), Text('Enjoy shopping with us ')],
            ),
          ),
          toolbarHeight: 200,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column( mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text(
                  'My Order',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.wallet),
                title: Text(
                  'Wallet',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.payment),
                title: Text(
                  'My Payment',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.notifications),
                title: Text(
                  'Notification',
                  style: TextStyle(fontSize: 20),
                ),
              ),
               const ListTile(
                leading: Icon(Icons.support_agent),
                title: Text(
                  'CustomerService',
                  style: TextStyle(fontSize: 20),
                ),
              ),
               const ListTile(
                leading: Icon(Icons.redeem),
                title: Text(
                  'My Gift Card',
                  style: TextStyle(fontSize: 20),
                ),
              ),
               const ListTile(
                leading: Icon(Icons.location_on),
                title: Text(
                  'My Delivery Address',
                  style: TextStyle(fontSize: 20),
                ),
              ),
               const ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ));
  }
}
