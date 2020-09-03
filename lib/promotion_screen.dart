import 'package:flutter/material.dart';

class PromotionScreen extends StatefulWidget {
  @override
  _PromotionScreenState createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
  int selectedPage = 0;

  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Promotions'),
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                color: Colors.blueGrey[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    FlatButton(
                      onPressed: () {
                        controller.animateToPage(0,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear);
                        setState(() {
                          selectedPage = 0;
                        });
                      },
                      child: Text(
                        'CONNECT & EARN',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color:
                              (selectedPage == 0) ? Colors.cyan : Colors.black,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                      color: (selectedPage == 0)
                          ? Colors.cyan
                          : Colors.blueGrey[900],
                    ),
                    Spacer(),
                    FlatButton(
                      onPressed: () {
                        controller.animateToPage(1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear);
                        setState(() {
                          selectedPage = 1;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'WALLET',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color:
                              (selectedPage == 1) ? Colors.cyan : Colors.black,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                      color: (selectedPage == 1)
                          ? Colors.cyan
                          : Colors.blueGrey[900],
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: controller,
                  onPageChanged: (int page) {
                    setState(() {
                      selectedPage = page;
                    });
                  },
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 25,
                                    ),
                                    child: Text(
                                      'Connect & Earn LKCash',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 25, horizontal: 100),
                                    child: Text(
                                      'Earn Rs 50 LKCash+ each time your contacts purchase',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(25),
                                    child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 50),
                                        child: Text(
                                          'SYNC CONTACTS',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      onPressed: () {},
                                      color: Colors.teal[300],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Your Contacts and Details are safe with us. Lenskart will never misuse or share them with anyone.',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'images/drawer_background.jpg',
                          width: MediaQuery.of(context).size.width,
                        ),
                        Spacer(),
                        Text(
                          'What is LK Cash+?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[700],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Text(
                            'Link your phonebook and earn LKCash+ when your friends order on Lenskart. You can use this LKCash+ against our orders fully.',
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'What is LK Cash?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[700],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Text(
                            'LK Cash earned through promotional activities for example Sign Up, Cashbacks, Sales etc. This has usage limit for booking and validity of 90 days from date of earning.',
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.teal[300],
                            onPressed: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: Text(
                                'SIGN IN / SIGN UP',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
