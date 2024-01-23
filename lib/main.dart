import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.star_half)),

          backgroundColor: const Color.fromARGB(255, 101, 3, 176),
          // title:const Text("Demo App",style:  TextStyle(color: Colors.white),),
          //centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(255, 238, 232, 239),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 101, 3, 176),
                Color.fromARGB(255, 101, 3, 176),
                // Color.fromARGB(255, 219, 76, 245),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Primary Level",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Secondary Level",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Higher Secondary Level",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                          cardWidget("1", const Color.fromARGB(255, 2, 107, 152)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Expart Level",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          cardWidget("1", const Color.fromARGB(255, 6, 92, 66)),
                          cardWidget("1", const Color.fromARGB(255, 6, 92, 66)),
                          cardWidget("1", const Color.fromARGB(255, 6, 92, 66)),
                          cardWidget("1", const Color.fromARGB(255, 6, 92, 66)),
                          cardWidget("1", const Color.fromARGB(255, 6, 92, 66)),
                          cardWidget("1", const Color.fromARGB(255, 6, 92, 66)),
                          cardWidget("1", const Color.fromARGB(255, 6, 92, 66)),
                          cardWidget("1", const Color.fromARGB(255, 6, 92, 66)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: const Color.fromARGB(255, 41, 1, 71),
          style: TabStyle.react,
          items: const [
            TabItem(icon: Icons.home, title: "Home"),
            TabItem(icon: Icons.settings, title: "Settings"),
            TabItem(icon: Icons.person, title: "Profile"),
            TabItem(icon: Icons.textsms, title: "HR test"),
            TabItem(icon: Icons.favorite, title: "favorite"),
          ],
          initialActiveIndex: selectedIndex,
        ),
      ),
    );
  }

  SizedBox cardWidget(String text, Color colors) {
    return SizedBox(
      width: 250,
      child: Padding(
        padding: const EdgeInsets.only(right: 3),
        child: Card(
          color: colors,
          elevation: 30,
          // shadowColor: Colors.grey,
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}

