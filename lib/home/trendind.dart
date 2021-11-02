import 'package:flutter/material.dart';
import 'package:shopui/buy/buy.dart';
import 'package:shopui/coomon/image.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  bool buy = true;
  bool fav = true;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade400)),
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹1,300",
                          style: TextStyle(color: Colors.red),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                fav = !fav;
                              });
                            },
                            child: Container(
                                child: fav
                                    ? Icon(Icons.favorite_border,color: Colors.grey.shade400)
                                    : Icon(Icons.favorite,color: Colors.red,)))
                      ],
                    ),
                  ),
                  Center(child: Image(image: MyImage.shoe)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Text("Nike Jorden 'Why' Not? Zer0"),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 118,
              top: 165,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    buy = !buy;
                  });
                },
                child: Container(
                  //  alignment: Alignment.centerLeft,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.grey.shade400, width: 0.5)),
                  child: Padding(
                      padding: const EdgeInsets.only(right: 9, bottom: 5),
                      child: buy
                          ? Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.grey.shade400,
                              size: 20,
                            )
                          : Icon(
                              Icons.done,
                              color: Colors.grey.shade400,
                              size: 20,
                            )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
