import 'package:flutter/material.dart';
import 'package:pet_app/Controller/colors.dart';
import 'package:pet_app/Controller/images.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          profile(),
          menu(),
          setting(),
        ],
      ),
    );
  }
}

Padding profile() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
    child: ListTile(
      leading: ClipRRect(
        child: proismailshah,
        borderRadius: BorderRadius.circular(50),
      ),
      title: Text(
        'ProIsmailShah',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        'Flutter Developer',
        style: TextStyle(color: Colors.grey[400]),
      ),
    ),
  );
}

Column menu() {
  return Column(
    children: [
      menuItem('Adoption', Icons.pets),
      menuItem('Donation', Icons.volunteer_activism),
      menuItem('Add Pet', Icons.add),
      menuItem('Favourites', Icons.favorite),
      menuItem('Message', Icons.mail),
      menuItem('Profile', Icons.person),
    ],
  );
}

ListTile menuItem(String itemText, IconData icon) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.white,
    ),
    title: Text(
      itemText,
      style: TextStyle(color: Colors.white),
    ),
  );
}

Padding setting() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 17),
    child: Row(
      children: [
        Icon(
          Icons.settings,
          color: Colors.grey[400],
        ),
        SizedBox(width: 20),
        Container(
          padding: EdgeInsets.only(right: 10.0),
          child: Text(
            "Setting",
            style: TextStyle(color: Colors.grey[400]),
          ),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0, color: Colors.grey[400]!),
            ),
          ),
        ),
        TextButton(onPressed: () {}, child: Text('Log Out',style: TextStyle(color: Colors.grey[400]),))
      ],
    ),
  );
}
