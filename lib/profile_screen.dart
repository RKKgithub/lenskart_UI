import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/drawer_background.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Row(
                        children: [
                          Spacer(
                            flex: 3,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('images/profile_person.png'),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(
                                flex: 3,
                              ),
                              Text(
                                'Hi Specsy!',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              Spacer(),
                              RaisedButton(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Text(
                                    'GET GOLD MEMBERSHIP',
                                    style: TextStyle(
                                      color: Colors.orange[300],
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                              Spacer(),
                            ],
                          ),
                          Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    FlatButton(
                      color: Colors.transparent,
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.format_list_bulleted),
                        title: Text('My Orders'),
                      ),
                      ListTile(
                        leading: Icon(Icons.import_contacts),
                        title: Text('My Addresses'),
                      ),
                      ListTile(
                        leading: Icon(Icons.favorite),
                        title: Text('My Wishlist'),
                      ),
                      ListTile(
                        leading: Icon(Icons.group),
                        title: Text('Refer & Earn'),
                      ),
                      ListTile(
                        leading: Icon(Icons.payment),
                        title: Text('Avail Gold at Store'),
                      ),
                      ListTile(
                        leading: Icon(Icons.local_atm),
                        title: Text('My Wallet'),
                      ),
                      ListTile(
                        leading: Icon(Icons.folder),
                        title: Text('Saved Powers'),
                      ),
                      ListTile(
                        leading: Icon(Icons.help),
                        title: Text('About Lenskart'),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.cyan,
                    onPressed: () {},
                    child: Text(
                      'LOGOUT',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
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
