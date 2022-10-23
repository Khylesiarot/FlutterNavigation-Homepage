// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Homapage extends StatelessWidget {
  const Homapage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromARGB(255, 1, 13, 24),
            Color.fromARGB(255, 1, 3, 17)
          ])),
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "BlueFire",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[800],
                  fontWeight: FontWeight.bold),
            ),
            leading: (Icon(Icons.local_fire_department_rounded,
                color: Colors.blue[800], size: 30)),
            titleSpacing: -10,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: Colors.blue[800],
                  iconSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: MaterialButton(
                    onPressed: () => {Navigator.pop(context)},
                    child: Text(
                      "Logout",
                      style: TextStyle(fontSize: 15, color: Colors.blue[800]),
                    )),
              )
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: const Bod(),
          bottomNavigationBar: const BotNav(),
        ),
      ),
    ));
  }
}

class BotNav extends StatelessWidget {
  const BotNav({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 4,
        child: TabBar(
          indicatorWeight: 3,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.blue,
          indicatorColor: Color.fromARGB(255, 21, 101, 192),
          tabs: [
            Tab(icon: Icon(Icons.home, size: 25)),
            Tab(
              icon: Icon(
                Icons.favorite,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.wallet,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.menu_rounded,
                size: 25,
              ),
            ),
          ],
        ));
  }
}

class Bod extends StatelessWidget {
  const Bod({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Text(
          "Explore",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      Container(
        height: 250,
        width: double.infinity,
        color: Colors.transparent,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
                  child: Container(
                    height: 230,
                    width: 150,
                    color: Colors.transparent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(10.0), //add border radius
                            child: Image.asset(
                              "assets/images/all.jpg",
                              height: 185.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 7),
                            child: Text(
                              "All Channels",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 7),
                            child: Text(
                              "384 new ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 25, 118, 210),
                                  fontSize: 12),
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
                  child: Container(
                    height: 230,
                    width: 150,
                    color: Colors.transparent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(10.0), //add border radius
                            child: Image.asset(
                              "assets/images/graphics.jpg",
                              height: 185.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 7),
                            child: Text(
                              "Graphic Arts",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 7),
                            child: Text(
                              "235 new ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 25, 118, 210),
                                  fontSize: 12),
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
                  child: Container(
                    height: 230,
                    width: 150,
                    color: Colors.transparent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(10.0), //add border radius
                            child: Image.asset(
                              "assets/images/beta.jpg",
                              height: 185.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 7),
                            child: Text(
                              "Beta Test",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 7),
                            child: Text(
                              "189 new ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 25, 118, 210),
                                  fontSize: 12),
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
                  child: Container(
                    height: 230,
                    width: 150,
                    color: Colors.transparent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(10.0), //add border radius
                            child: Image.asset(
                              "assets/images/ongoing.jpg",
                              height: 185.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 7),
                            child: Text(
                              "Ongoing Devs",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 7),
                            child: Text(
                              "560 new ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 25, 118, 210),
                                  fontSize: 12),
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            )),
      ),
      Container(
        color: const Color.fromARGB(10, 158, 158, 158),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                child: Text(
                  "Highlights",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.transparent,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 260,
                            width: 290,
                            color: Colors.transparent,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        10.0), //add border radius
                                    child: Image.asset(
                                      "assets/images/man.jpg",
                                      height: 200.0,
                                      width: 290.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 3.0, horizontal: 7),
                                    child: Text(
                                      "Mobile Legends Bang Bang",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 7),
                                    child: Text(
                                      "4.5 rating ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellowAccent,
                                          fontSize: 12),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 7),
                                    child: Text(
                                      "3.4M downloads ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 25, 118, 210),
                                          fontSize: 12),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 260,
                            width: 290,
                            color: Colors.transparent,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        10.0), //add border radius
                                    child: Image.asset(
                                      "assets/images/Valo.png",
                                      height: 200.0,
                                      width: 290.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 3.0, horizontal: 7),
                                    child: Text(
                                      "Riot Games: Valorant",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 7),
                                    child: Text(
                                      "4.5 rating ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellowAccent,
                                          fontSize: 12),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 7),
                                    child: Text(
                                      "2M downloads ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 25, 118, 210),
                                          fontSize: 12),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    )),
              ),
            ]),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
        child: Text(
          "Popular",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      Container(
        height: 230,
        width: double.infinity,
        color: Colors.transparent,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20.0),
                  child: Container(
                    height: 210,
                    width: 230,
                    color: Colors.transparent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(10.0), //add border radius
                            child: Image.asset(
                              'assets/images/ad.jpg',
                              height: 165.0,
                              width: 230.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 7),
                            child: Text(
                              "Adventure Time: Puzzle Game",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 5.0),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 2),
                                  child: Text(
                                    "4.9 rating ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellowAccent,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 2),
                                  child: Text(
                                    "12M downloads ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 25, 118, 210),
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
                  child: Container(
                    height: 210,
                    width: 230,
                    color: Colors.transparent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(10.0), //add border radius
                            child: Image.asset(
                              "assets/images/ov.jpeg",
                              height: 165.0,
                              width: 230.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 7),
                            child: Text(
                              "Overwatch",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 5.0),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 2),
                                  child: Text(
                                    "4.6 rating ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellowAccent,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 2),
                                  child: Text(
                                    "5M downloads ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 25, 118, 210),
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
                  child: Container(
                    height: 210,
                    width: 230,
                    color: Colors.transparent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(10.0), //add border radius
                            child: Image.asset(
                              "assets/images/apex.jpg",
                              height: 165.0,
                              width: 230.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 7),
                            child: Text(
                              "Apex Legends",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 5.0),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 2),
                                  child: Text(
                                    "4.6 rating ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellowAccent,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 2),
                                  child: Text(
                                    "4.5M downloads ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 25, 118, 210),
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
                  child: Container(
                    height: 210,
                    width: 230,
                    color: Colors.transparent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(10.0), //add border radius
                            child: Image.asset(
                              "assets/images/lol.jpg",
                              height: 165.0,
                              width: 230.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 7),
                            child: Text(
                              "League of Legends: Wildrift",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 5.0),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 2),
                                  child: Text(
                                    "4.5 rating ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellowAccent,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 2),
                                  child: Text(
                                    "21M downloads ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 25, 118, 210),
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            )),
      ),
    ])));
  }
}
