import 'package:flutter/material.dart';
import 'package:pet_app/Controller/colors.dart';
import 'package:pet_app/Controller/images.dart';
// import 'package:pet_app/Controller/images.dart';

class PetPage extends StatelessWidget {
  const PetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blueGrey,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.center,
                    child: Material(
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: 100),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: proismailshah,
                              ),
                              title: Text(
                                'ProIsmailShah',
                                style: TextStyle(color: primaryColor),
                              ),
                              subtitle: Text('Owner',
                                  style: TextStyle(color: Colors.grey[400])),
                              trailing: Text('May 25,2020',
                                  style: TextStyle(color: Colors.grey[400])),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 10),
                            child: Text(
                              "My job require moving to other country. I don't have the oppurtunity to take my Sola with me. I am looking for good people who can shelter my Sola",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                  color: Colors.blueGrey,
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey[400],
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  )),
              Icon(
                Icons.share,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
        Align(
          child: Image(
            image: AssetImage('assets/pet-cat2.png'),
            height: 350,
          ),
          alignment: Alignment.topCenter,
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: shadow),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        elevation: 0,
                        color: Colors.white,
                        child: Text(
                          'Sola',
                          style: TextStyle(
                            // fontFamily: 'roboto',
                            color: Colors.blueGrey,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.male,
                        size: 30,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                          elevation: 0,
                          color: Colors.white,
                          child: Text(
                            'Abyssinian Cat',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )),
                      Material(
                          elevation: 0,
                          color: Colors.white,
                          child: Text(
                            '2 Years Old',
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 18),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    children: [
                      Icon(Icons.place),
                      Material(
                          elevation: 0,
                          color: Colors.white,
                          child: Text(
                            'Give Your Address Here',
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 18),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Material(
                      color: primaryColor,
                      child: Text(
                        'Adoption',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 18),
                      ),
                    )),
                  )),
                ],
              ),
            ),
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
        )
      ],
    );
  }
}
