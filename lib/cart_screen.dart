import 'package:flutter/material.dart';
import 'main.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Spacer(
                  flex: 2,
                ),
                Container(
                  child: Image.asset(
                    'images/empty_cart.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: Text(
                      'Your cart is empty!',
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
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      'Add a few products and come here to checkout.',
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
                      padding: const EdgeInsets.symmetric(vertical: 15),
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
        ),
      ),
    );
  }
}
