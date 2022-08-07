import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('App Bar'),
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.notifications_none)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search))
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.orange],
                      begin: Alignment.bottomLeft)),
            ),
            bottom: TabBar(
              //isScrollable: true,

              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.star), text: 'Feed'),
                Tab(icon: Icon(Icons.face), text: 'Profile'),
                Tab(icon: Icon(Icons.settings), text: 'Settings'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              buildPage('Home Page'),
              buildPage('Feed Page'),
              buildPage('Profile Page'),
              buildPage('Settings Page'),
            ],
          ),
        ),
      );

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}
