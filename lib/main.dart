import 'package:flutter/material.dart';
import 'contact_screen.dart';
import 'profile_screen.dart';
import 'more_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'cart_screen.dart';
import 'shortlist_screen.dart';
import 'promotion_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

int secondCurrentPage = 1;
bool goingToEnd = false;
int firstCurrentPage = 0;
int thirdCurrentPage = 0;

class _HomeScreenState extends State<HomeScreen> {
  final secondController = PageController(initialPage: 1);

  final firstController =
      PageController(initialPage: 0, viewportFraction: 0.92);

  final thirdController =
      PageController(initialPage: 0, viewportFraction: 0.92);

  @override
  Widget build(BuildContext context) {
    List<Widget> topHorizontalContent = [
      SizedBox(
        width: 7,
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.262),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/frame_size.jpg'),
              ),
              Text(
                'FRAME SIZE',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.262),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/3d_tryon.png'),
              ),
              Text(
                '3D TRY ON',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.262),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/delivery_time.jpg'),
              ),
              Text(
                'DELIVERY TIME',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.262),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/home_eye_test.jpg'),
              ),
              Text(
                'HOME EYE TESTS',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.262),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/phone_specs.jpg'),
              ),
              Text(
                'PHONE/PC SPECS',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.262),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/500_stores.jpg'),
              ),
              Text(
                '500+ STORES',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.262),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/our_contribution.png'),
              ),
              Text(
                'OUR CONTRIBUTION',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 7,
      ),
    ];

    List<IconButton> appBarActions = [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.account_balance_wallet),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PromotionScreen(),
            ),
          );
        },
      ),
      IconButton(
        icon: Icon(Icons.favorite),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShortlistScreen(),
            ),
          );
        },
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
      ),
    ];

    List<Widget> menuItems = [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(),
            ),
          );
        },
        child: DrawerHeader(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/drawer_background.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile_person.png'),
                  ),
                  Text(
                    'Hi Specsy!',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  RaisedButton(
                    color: Colors.black,
                    child: Text(
                      'MY ACCOUNT',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                  ),
                  Spacer(),
                  RaisedButton(
                    color: Colors.black,
                    child: Text(
                      'GET GOLD MEMBERSHIP',
                      style: TextStyle(
                        color: Colors.orange[300],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.blueGrey[900],
          ),
          title: Text('Home'),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.local_mall,
          color: Colors.blueGrey[900],
        ),
        title: Text('Your Orders'),
      ),
      ExpansionTile(
        leading: Text(''),
        title: Text('Eyeglasses'),
        children: [
          ListTile(
            leading: Text(''),
            title: Text('All Collection'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('Air-Lightweight Collection'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('2 Pairs for 999 - Classic'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('2 Pairs for 3000 - Premium'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('Clearance Stock starting Rs.499'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('BLU collection at Flat Rs.999'),
          ),
        ],
      ),
      ExpansionTile(leading: Text(''), title: Text('Sunglasses'), children: [
        ListTile(
          leading: Text(''),
          title: Text('All Sunglasses'),
        ),
        ListTile(
          leading: Text(''),
          title: Text('Fromm Rs.899 - Classic'),
        ),
        ListTile(
          leading: Text(''),
          title: Text('2 Pirs for 3500 - Premium'),
        ),
        ListTile(
          leading: Text(''),
          title: Text('Ray-Ban Sunglasses'),
        ),
        ListTile(
          leading: Text(''),
          title: Text('Polarized Collection'),
        ),
      ]),
      ListTile(
        leading: Text(''),
        title: Text('Powered Sunglasses'),
      ),
      ExpansionTile(
        leading: Icon(
          Icons.lens,
          color: Colors.blueGrey[900],
        ),
        title: Text('Contact Lenses'),
        children: [
          ListTile(
            leading: Text(''),
            title: Text('Monthly Disposable'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('Daily Disposable'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('Color Contacts'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('Toric Power'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('Bausch & Lomb'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('Aqualens'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('Alcon'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('Johnson & Johnson'),
          ),
        ],
      ),
      ListTile(
        leading: Text(''),
        title: Text('Gold Membership Offers'),
      ),
      ListTile(
        leading: Icon(
          Icons.attach_money,
          color: Colors.blueGrey[900],
        ),
        title: Text('Avail Gold at Store'),
      ),
      ExpansionTile(
        leading: Icon(
          Icons.list,
          color: Colors.blueGrey[900],
        ),
        title: Text('Services'),
        children: [
          ListTile(
            leading: Text(''),
            title: Text('Try at Home'),
          ),
          ListTile(
            leading: Text(''),
            title: Text('Home Eye Checkup'),
          ),
        ],
      ),
      ListTile(
        leading: Icon(
          Icons.grade,
          color: Colors.blueGrey[900],
        ),
        title: Text('Rate Us'),
      ),
      ListTile(
        leading: Icon(
          Icons.live_help,
          color: Colors.blueGrey[900],
        ),
        title: Text('FAQ'),
      ),
      ListTile(
        leading: Icon(
          Icons.mobile_screen_share,
          color: Colors.blueGrey[900],
        ),
        title: Text('Agent Screen Share'),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.056,
        color: Colors.grey[200],
      ),
      Container(
        color: Colors.grey[300],
        height: MediaQuery.of(context).size.height * 0.034,
        child: Row(
          children: [
            Spacer(),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactScreen(),
                  ),
                );
              },
              child: Text('CONTACT US'),
            ),
            Spacer(),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MoreScreen(),
                  ),
                );
              },
              child: Text('MORE'),
            ),
            Spacer(
              flex: 5,
            ),
          ],
        ),
      )
    ];

    List<Widget> firstCardSet = [
      Container(
        width: (MediaQuery.of(context).size.width) * (0.893),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'images/blue.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.893),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'images/blue.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.893),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'images/blue.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.893),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'images/blue.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.893),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'images/blue.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ];

    List<Widget> secondCardSet = [
      Container(
        width: (MediaQuery.of(context).size.width) * (0.893),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'images/spider.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Container(
        width: (MediaQuery.of(context).size.width) * (0.893),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'images/spider.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ];

    return Scaffold(
      drawer: Container(
        width: (MediaQuery.of(context).size.width) * (8 / 9),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: menuItems,
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey[900],
        actions: appBarActions,
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.056,
                      color: Colors.blueGrey[900],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.079,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: topHorizontalContent,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.281,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.281,
                        child: PageView(
                          onPageChanged: (int page) {
                            setState(() {
                              firstCurrentPage = page;
                            });
                          },
                          controller: firstController,
                          children: firstCardSet,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: DotsIndicator(
                            dotsCount: 5,
                            position: firstCurrentPage.toDouble(),
                            decorator: DotsDecorator(
                              color: Colors.grey[350], // Inactive color
                              activeColor: Colors.cyan,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: (MediaQuery.of(context).size.width) * (20 / 21),
                    height: MediaQuery.of(context).size.height * 0.337,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: (secondCurrentPage == 0)
                                            ? Colors.cyan
                                            : Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid),
                                  ),
                                  color: (secondCurrentPage == 0)
                                      ? Colors.cyan
                                      : Colors.white,
                                  onPressed: () {
                                    secondController.animateToPage(0,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.linear);
                                    setState(() {
                                      secondCurrentPage = 0;

                                      goingToEnd = true;
                                    });
                                  },
                                  child: Text(
                                    'WOMEN',
                                    style: TextStyle(
                                        color: (secondCurrentPage == 0)
                                            ? Colors.white
                                            : Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: (secondCurrentPage == 1)
                                            ? Colors.cyan
                                            : Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid),
                                  ),
                                  color: (secondCurrentPage == 1)
                                      ? Colors.cyan
                                      : Colors.white,
                                  onPressed: () {
                                    secondController.animateToPage(1,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.linear);
                                    setState(() {
                                      secondCurrentPage = 1;

                                      goingToEnd = false;
                                    });
                                  },
                                  child: Text(
                                    'MEN',
                                    style: TextStyle(
                                        color: (secondCurrentPage == 1)
                                            ? Colors.white
                                            : Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: (secondCurrentPage == 2)
                                            ? Colors.cyan
                                            : Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid),
                                  ),
                                  color: (secondCurrentPage == 2)
                                      ? Colors.cyan
                                      : Colors.white,
                                  onPressed: () {
                                    secondController.animateToPage(2,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.linear);
                                    setState(() {
                                      secondCurrentPage = 2;

                                      goingToEnd = true;
                                    });
                                  },
                                  child: Text(
                                    'KIDS',
                                    style: TextStyle(
                                        color: (secondCurrentPage == 2)
                                            ? Colors.white
                                            : Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          Expanded(
                            child: PageView(
                              onPageChanged: (int page) {
                                setState(() {
                                  secondCurrentPage = page;
                                });
                              },
                              controller: secondController,
                              children: [
                                Image.asset(
                                  'images/white.png',
                                  fit: BoxFit.contain,
                                ),
                                Image.asset(
                                  'images/white.png',
                                  fit: BoxFit.contain,
                                ),
                                Image.asset(
                                  'images/white.png',
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: (MediaQuery.of(context).size.width) * (20 / 21),
                    height: MediaQuery.of(context).size.height * 0.135,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/bananas.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: Stack(
                    children: [
                      PageView(
                        onPageChanged: (int page) {
                          setState(() {
                            thirdCurrentPage = page;
                          });
                        },
                        controller: thirdController,
                        children: secondCardSet,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 7),
                          child: DotsIndicator(
                            dotsCount: 2,
                            position: thirdCurrentPage.toDouble(),
                            decorator: DotsDecorator(
                              color: Colors.grey[350], // Inactive color
                              activeColor: Colors.cyan,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: (MediaQuery.of(context).size.width) * (20 / 21),
                    height: MediaQuery.of(context).size.height * 0.146,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/bananas.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
                  child: Text(
                    'Lenskart Assurance',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width) * (0.464),
                        height: MediaQuery.of(context).size.height * 0.27,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/spider.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width) * (0.464),
                        height: MediaQuery.of(context).size.height * 0.27,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/spider.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: (MediaQuery.of(context).size.width) * (20 / 21),
                    height: MediaQuery.of(context).size.height * 0.135,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/bananas.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: (MediaQuery.of(context).size.width) * (20 / 21),
                    height: MediaQuery.of(context).size.height * 0.135,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/bananas.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: (MediaQuery.of(context).size.width) * (20 / 21),
                    height: MediaQuery.of(context).size.height * 0.135,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/bananas.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.blueGrey[900],
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Text(
                          'Can we Help?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton.icon(
                                  label: Text(
                                    'CONTACT US',
                                    style: TextStyle(color: Colors.cyanAccent),
                                  ),
                                  icon: Icon(
                                    Icons.message,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ContactScreen(),
                                      ),
                                    );
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'We are available',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlatButton.icon(
                                  label: Text(
                                    'EMAIL',
                                    style: TextStyle(color: Colors.cyanAccent),
                                  ),
                                  icon: Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'support@lenskart.com',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(
                              flex: 2,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
