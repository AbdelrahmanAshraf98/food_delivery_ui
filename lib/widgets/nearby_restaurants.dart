import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import '../data/data.dart';
import '../widgets/rating_stars.dart';

class NearbyRestaurants extends StatelessWidget {
  _restaurantBuilder() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 1.0,
              color: Colors.grey[200],
            )),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                  height: 150.0,
                  width: 150.0,
                  image: AssetImage(restaurant.imageUrl),
                  fit: BoxFit.cover),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    restaurant.name,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  RatingStars(
                    restaurant.rating,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    restaurant.address,
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    '0.2 meters away',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
    });
    return Column(children: restaurantList);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'NearbyRestaurants',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0),
          ),
          _restaurantBuilder(),
        ],
      ),
    );
  }
}
