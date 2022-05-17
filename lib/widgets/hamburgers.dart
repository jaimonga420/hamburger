import 'package:flutter/material.dart';

class Hamburgers extends StatefulWidget {
  const Hamburgers({Key? key}) : super(key: key);

  @override
  State<Hamburgers> createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburgers> {
  Widget chickenBurger = Image.asset('assets/images/chickenburger.png');
  Widget baconBurger = Image.asset('assets/images/baconburger.png');
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, right: index == 9 ? 20 : 0),
                height: 240,
                width: 200,
                child: GestureDetector(
                  onTap: () {
                    // Do Something
                  },
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: <Widget>[
                          const Text(
                            'Burger',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const Spacer(),
                          Row(children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                "₹50",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 45,
                              height: 45,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(Icons.add),
                              ),
                            )
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 75,
                  child: GestureDetector(
                    child: index.isEven ? chickenBurger : baconBurger,
                    onTap: () {
                      // To Do
                    },
                  ))
            ]);
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
