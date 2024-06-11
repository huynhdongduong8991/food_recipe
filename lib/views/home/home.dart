import 'package:flutter/material.dart';
import 'package:food_recipe/common/background_clipper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: BackgroundCurve(),
              child: Container(
                width: double.infinity,
                height: 180.0,
                color: Colors.green.shade300,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Welcome To Food Recipe",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    SizedBox(height: 50.0)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            "Category",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "See All",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: DefaultTabController(
                        length: 3,
                        child: TabBar(
                          onTap: (index) {},
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          indicator: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const <BoxShadow>[],
                          ),
                          tabs: const <Widget>[
                            Text(
                              "Breakfast",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "Lunch",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "Dinner",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
