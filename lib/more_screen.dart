import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('About Lenskart'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: Card(
                  elevation: 3,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.help_outline,
                          color: Colors.blueGrey[900],
                        ),
                        title: Text('FAQ'),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.assignment,
                          color: Colors.blueGrey[900],
                        ),
                        title: Text('Terms & Conditions'),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.delete,
                          color: Colors.blueGrey[900],
                        ),
                        title: Text('Reset App Settings'),
                        subtitle: Text(
                            'Clear app preferences and restore to a clean state. All user & preferences will be lost'),
                        isThreeLine: true,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.delete,
                          color: Colors.blueGrey[900],
                        ),
                        title: Text('Reset App Firebase config'),
                        subtitle:
                            Text('Clear and refresh your firebase configs'),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.image,
                          color: Colors.blueGrey[900],
                        ),
                        title: Text('Image Quality'),
                        subtitle: Text('Optimized'),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.delete,
                          color: Colors.blueGrey[900],
                        ),
                        title: Text('Store Salesman Flow'),
                        subtitle: Text('Only For Lenskart Employees'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          'About App',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Lenskart'),
                        subtitle: Text('(c)2017'),
                      ),
                      ListTile(
                        title: Text('Version'),
                        subtitle: Text('3.0.1-200829001'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
