import 'package:flutter/material.dart';
import 'package:pet_app/Controller/colors.dart';
import 'package:pet_app/Controller/images.dart';

import 'pet_page.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static double xOffSet = 0.0;

  static double yOffSet = 0.0;

  static double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          xOffSet = 0.0;
          yOffSet = 0.0;
          scaleFactor = 1;
          isDrawerOpen = false;
        });
      },
      child: SingleChildScrollView(
        child: AnimatedContainer(
          transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
            ..scale(scaleFactor),
          duration: Duration(milliseconds: 250),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (isDrawerOpen != true) {
                          setState(() {
                            xOffSet = 230.0;
                            yOffSet = 150.0;
                            scaleFactor = 0.6;
                            isDrawerOpen = true;
                          });
                        } else if (isDrawerOpen) {
                          setState(() {
                            xOffSet = 0;
                            yOffSet = 0;
                            scaleFactor = 1;
                            isDrawerOpen = false;
                          });
                        }
                      },
                      icon: isDrawerOpen
                          ? Icon(Icons.arrow_back_ios)
                          : Icon(Icons.menu),
                    ),
                    Column(
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                        Row(
                          children: [
                            Icon(Icons.place),
                            Text('Kyiv Ukaraine'),
                          ],
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: AssetImage('assets/proismailshah.jpg'),
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: containerColer,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffFFFFFF),
                        filled: true,
                        enabled: isDrawerOpen ? false : true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: secondaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search Pet To Adopt',
                        hintStyle: TextStyle(color: secondaryColor),
                      ),
                    ),
                    SizedBox(height: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          animals('cat.png', 'Cat'),
                          SizedBox(width: 20),
                          animals('horse.png', 'Horse'),
                          SizedBox(width: 20),
                          animals('dog.png', 'Dog'),
                          SizedBox(width: 20),
                          animals('parrot.png', 'Parrot'),
                          SizedBox(width: 20),
                          animals('rabbit.png', 'Rabbit'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    catCard(petCat2, catBgColor, context),
                    catCard(petCat1, catBgColor2, context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding animals(String pic, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              boxShadow: shadow,
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('assets/$pic'),
                color: Colors.grey[400],
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: 18, color: Colors.grey[400]),
          ),
          // SizedBox(height: 20),
        ],
      ),
    );
  }
}

Container catCard(Image pic, Color bgColor, BuildContext context) {
  return Container(
    height: 240,
    child: Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: shadow,
                ),
              ),
              Align(
                child: InkWell(
                  child: pic,
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => PetPage());
                    Navigator.of(context).push(route);
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              top: 60,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sola',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                            fontSize: 22),
                      ),
                      Icon(
                        Icons.male,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Sami Russian',
                    style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2 Years Old',
                    style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: Colors.grey[400],
                      ),
                      // SizedBox(width: 5),
                      Text(
                        'Distance: 36Km',
                        style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
