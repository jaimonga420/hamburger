import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildListDelegate([
      Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: deviceSize.height / 3.5,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(45)),
                boxShadow: const [
                  BoxShadow(offset: Offset(0, 0), blurRadius: 2),
                ]),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    const CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 32,
                        backgroundImage:
                            AssetImage('assets/images/profile.png')),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'Elon Musk',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black54),
                          child: const Text(
                            'Gold Member',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Text(
                      '₹500',
                      style: Theme.of(context).textTheme.headline6,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      Stack(children: <Widget>[
        Positioned(
          child: SizedBox(
            width: deviceSize.width,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'What does your belly want?',
                    suffixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.only(left: 20)),
              ),
            ),
          ),
        ),
      ]),
    ]));
  }
}
