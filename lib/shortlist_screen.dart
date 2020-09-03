import 'package:flutter/material.dart';
import 'cart_screen.dart';

class ShortlistScreen extends StatefulWidget {
  @override
  _ShortlistScreenState createState() => _ShortlistScreenState();
}

class _ShortlistScreenState extends State<ShortlistScreen> {
  int selectedPage = 0;

  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Shortlist'),
        backgroundColor: Colors.blueGrey[900],
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.056,
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'WISHLIST',
                          style: TextStyle(color: Colors.white),
                        ),
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
                      child: Text(
                        'RECENTLY VIEWED',
                        style: TextStyle(color: Colors.white),
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
                    Center(
                      child: Column(
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Container(
                            child: Image.asset(
                              'images/shortlist.png',
                              width: MediaQuery.of(context).size.width / 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              child: Text(
                                'No shortlisted items',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              child: Text(
                                'Browse products and add them to your wishlist to see them here!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              color: Colors.cyan,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  'CONTINUE SHOPPING',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        child: Text('Nothing to show'),
                      ),
                    ),
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
