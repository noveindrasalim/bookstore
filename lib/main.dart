import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff7f7f7),
                        ),
                        child: Icon(
                          Icons.align_horizontal_left_sharp,
                          color: Color(0xff5e5e5e),
                          size: 30,
                        ),
                      ),
                      Text(
                        "Explore",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xfff7f7f7),
                        ),
                        child: Icon(
                          Icons.person,
                          color: Color(0xff5e5e5e),
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xfff7f7f7),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          label: Text("Search..."),
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Populer Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowAll(),
                          ),
                        ),
                        child: Text(
                          "Show All",
                          style: TextStyle(
                              color: Color(0xff3b6d63),
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BukuAtomic(),
                            ),
                          );
                        }),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Color(0xffebe0d2),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/buku2.png",
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 150,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Atomic Habits",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Icon(Icons.add_chart_rounded)
                                ],
                              ),
                            ),
                            Text(
                              "James Clear",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 150,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xffd4e6ee),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/buku6.png",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Dilan 1990",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Icon(Icons.add_chart_rounded)
                              ],
                            ),
                          ),
                          Text(
                            "Pidi Baiq",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 150,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1faee),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/buku10.png",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Berani Tidak Disukai",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Icon(Icons.add_chart_rounded)
                              ],
                            ),
                          ),
                          Text(
                            "Ichiro Khisimi",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 150,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xfff5dbdd),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/buku1.png",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Psychology Of Money",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                                Icon(Icons.add_chart_rounded)
                              ],
                            ),
                          ),
                          Text(
                            "James Clear",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 150,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xffdee0e1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/buku3.png",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Fucked",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Icon(Icons.add_chart_rounded)
                              ],
                            ),
                          ),
                          Text(
                            "Mark Manson",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Treending Books",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Show All",
                        style: TextStyle(
                            color: Color(0xff3b6d63),
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                    width: double.infinity,
                    height: 130,
                    padding: EdgeInsets.only(
                        left: 15, right: 15, bottom: 10, top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade100),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Color(0xfff5dbdd),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/buku1.png",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Psychology of Money",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "By Morgan Housel",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Icon(
                                    Icons.add_chart_rounded,
                                    size: 30,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_half_sharp,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("4.8")
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                    width: double.infinity,
                    height: 130,
                    padding: EdgeInsets.only(
                        left: 15, right: 15, bottom: 10, top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade100),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Color(0xfff5dbdd),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Container(
                              width: 65,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/buku8.png",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Filosofi Teras",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "By  Setyo Wibowo",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Icon(
                                    Icons.add_chart_rounded,
                                    size: 30,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_half_sharp,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("4.5")
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                    width: double.infinity,
                    height: 130,
                    padding: EdgeInsets.only(
                        left: 15, right: 15, bottom: 10, top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade100),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Color(0xfff5dbdd),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/buku5.png",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Psychology of Money",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "By Morgan Housel",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Icon(
                                    Icons.add_chart_rounded,
                                    size: 30,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_half_sharp,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("4.8")
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xffe3ebe2),
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.menu_book_sharp, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}

class BukuAtomic extends StatelessWidget {
  const BukuAtomic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffebe0d2),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            child: Icon(
                              Icons.arrow_back,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.add_chart_rounded,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                      ),
                      Container(
                        width: 250,
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/buku2.png",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Atomic Habits",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "James Clear",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star_half_sharp,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("4.8"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text(
                    "\$10.09",
                    style: TextStyle(
                        color: Color(0xff3b6d63),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffeaefed),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Qty",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(Icons.minimize),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3b6d63),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.minimize),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff116557),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ShowAll extends StatelessWidget {
  const ShowAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff7f7f7),
                      ),
                      child: Icon(
                        Icons.align_horizontal_left_sharp,
                        color: Color(0xff5e5e5e),
                        size: 30,
                      ),
                    ),
                    Text(
                      "Popular Now",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xfff7f7f7),
                      ),
                      child: Icon(
                        Icons.search,
                        color: Color(0xff5e5e5e),
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Interest",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShowAll(),
                        ),
                      ),
                      child: Text(
                        "Show All",
                        style: TextStyle(
                            color: Color(0xff3b6d63),
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xffebe0d2),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/buku2.png",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Atomic Habits",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Icon(Icons.add_chart_rounded)
                            ],
                          ),
                        ),
                        Text(
                          "James Clear",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xfff1faee),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/buku10.png",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  "Berani Tidak Disukai",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Icon(Icons.add_chart_rounded)
                            ],
                          ),
                        ),
                        Text(
                          "Ichiro Khisimi",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Best Seller",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Newest",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xffbdc3c1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xffd4e6ee),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/buku6.png",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Dilan 1990",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Icon(Icons.add_chart_rounded)
                            ],
                          ),
                        ),
                        Text(
                          "Pidi Baiq",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xfff5dbdd),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/buku1.png",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  "Psychology Of Money",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                              Icon(Icons.add_chart_rounded)
                            ],
                          ),
                        ),
                        Text(
                          "James Clear",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xffdee0e1),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/buku3.png",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Fucked",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Icon(Icons.add_chart_rounded)
                            ],
                          ),
                        ),
                        Text(
                          "Mark Manson",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xffdee0e1),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/buku8.png",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Filosofi Teras",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Icon(Icons.add_chart_rounded)
                            ],
                          ),
                        ),
                        Text(
                          "Mark Manson",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
