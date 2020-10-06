import 'package:app_base/src/modules/components/category_widget.dart';
import 'package:app_base/src/modules/home/utils/home_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform:
          Matrix4.translationValues(HomeUtils.xOffset, HomeUtils.yOffset, 0)
            ..scale(HomeUtils.scaleFactor),
      duration: Duration(microseconds: 250),
      color: Color(0xFFFFFFFF),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeUtils.isDrawerOpen
                          ? IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              color: Colors.teal[600],
                              onPressed: () {
                                setState(() {
                                  HomeUtils.xOffset = 0;
                                  HomeUtils.yOffset = 0;
                                  HomeUtils.scaleFactor = 1;
                                  HomeUtils.isDrawerOpen = false;
                                });
                              },
                            )
                          : IconButton(
                              icon: Icon(Icons.menu),
                              color: Colors.teal[600],
                              onPressed: () {
                                setState(() {
                                  HomeUtils.xOffset = 230;
                                  HomeUtils.yOffset = 150;
                                  HomeUtils.scaleFactor = 0.6;
                                  HomeUtils.isDrawerOpen = true;
                                });
                              },
                            ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Ecommerce",
                            style: TextStyle(
                              color: Colors.teal[600],
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          IconButton(
                              icon: Icon(Icons.shopping_cart,
                                  color: Colors.teal[600]),
                              onPressed: () {}),
                          Positioned(
                            top: 8,
                            left: 5,
                            child: Container(
                              constraints: BoxConstraints(
                                  minHeight: 14,
                                  maxHeight: 14,
                                  minWidth: 14,
                                  maxWidth: 14),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.redAccent),
                              child: Center(
                                child: Text(
                                  "9+",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    constraints: BoxConstraints(
                        minWidth: double.infinity,
                        minHeight: MediaQuery.of(context).size.height / 2),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/img1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                              left: 0,
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.grey,
                              )),
                          Positioned(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Paisagem",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "melhores paisagens do Brasil, onde nao sei onde se localiza.",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.9),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Mais detalhes",
                                        style: TextStyle(
                                            color: Colors.amberAccent)),
                                    Icon(Icons.arrow_forward_ios,
                                        color: Colors.amberAccent, size: 16)
                                  ],
                                ),
                                SizedBox(
                                    width: (MediaQuery.of(context).size.width *
                                            15) /
                                        100),
                                Row(
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(
                                          minHeight: 14,
                                          maxHeight: 14,
                                          minWidth: 14,
                                          maxWidth: 14),
                                      margin: EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color: Colors.white),
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                          minHeight: 14,
                                          maxHeight: 14,
                                          minWidth: 14,
                                          maxWidth: 14),
                                      margin: EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color: Colors.grey),
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                          minHeight: 14,
                                          maxHeight: 14,
                                          minWidth: 14,
                                          maxWidth: 14),
                                      margin: EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color: Colors.grey),
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                          minHeight: 14,
                                          maxHeight: 14,
                                          minWidth: 14,
                                          maxWidth: 14),
                                      margin: EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              right: 0,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ),
                  CategoryWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
