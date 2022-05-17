import 'package:flutter/material.dart';

import './widgets/header.dart';
import './widgets/categories.dart';
import './widgets/hamburgers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.teal,
          primaryColor: Colors.teal,
          appBarTheme: const AppBarTheme(centerTitle: true),
          bottomAppBarColor: Colors.teal,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.orange),
          textTheme: const TextTheme(
              headline6: TextStyle(color: Colors.white, fontSize: 18))),
      home: const Hamburger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamburger extends StatefulWidget {
  const Hamburger({Key? key}) : super(key: key);

  @override
  State<Hamburger> createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Hamburger App'),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: const CustomScrollView(
        slivers: [
          Header(),
          Categories(),
          Hamburgers(),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(35),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Row(
            children: <Widget>[
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_alert),
                color: Colors.white,
              ),
              const Spacer(),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.turned_in),
                  color: Colors.white),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
