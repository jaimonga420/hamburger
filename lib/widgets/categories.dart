import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (ctx, index) {
              return Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: index == 0 ? 10 : 0, right: 10),
                        height: 90,
                        width: 90,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedItem = index;
                            });
                          },
                          child: Card(
                            color: selectedItem == index
                                ? Colors.black.withOpacity(0.7)
                                : Colors.white,
                            elevation: 3,
                            margin: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Icon(
                              Icons.fastfood,
                              color: selectedItem == index
                                  ? Colors.white
                                  : Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                      bottom: 0,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: index == 0 ? 10 : 0, right: 10),
                        width: 90,
                        child: Row(
                          children: const <Widget>[
                            Spacer(),
                            Text("Burger"),
                            Spacer(),
                          ],
                        ),
                      ))
                ],
              );
            }),
      ),
    );
  }
}
