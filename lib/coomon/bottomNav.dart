import 'package:flutter/material.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.restorablePopAndPushNamed(context, '/home');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blueAccent),
                ),
                height: 50,
                width: 50,
                child: Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/buy');
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)),
                  height: 50,
                  width: 50,
                  child: Icon(Icons.shopping_bag_outlined, size: 30)),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)),
                height: 50,
                width: 50,
                child: Icon(Icons.favorite_border, size: 30)),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)),
                height: 50,
                width: 50,
                child: Icon(Icons.notifications_none, size: 30))
          ],
        ),
      ),
    );
  }
}
