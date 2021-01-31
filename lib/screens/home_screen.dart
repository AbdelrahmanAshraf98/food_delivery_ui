import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import '../models/user.dart';
import '../widgets/recent_orders.dart';
import '../widgets/nearby_restaurants.dart';
import '../screens/cart_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.account_circle),
            iconSize: 30.0,
            onPressed: () {},
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Text('Food Delivery'),
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => CartScreen()),
                  );
                },
                child: Text(
                  'Cart(${currentUser.cart.length})',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                )),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        width: 0.8, color: Theme.of(context).primaryColor),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  hintText: 'Search Food or Restaurants',
                  prefixIcon: Icon(Icons.search, size: 30.0),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            RecentOrders(),
            NearbyRestaurants(context),
          ],
        ));
  }
}
