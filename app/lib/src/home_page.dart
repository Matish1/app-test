import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body_content(),
    );
  }

  Widget body_content() {
    return Container(
      child: Column(
        children: [
          header_menu(),
          scroll_horizontal(),
        ],
      ),
    );
  }

  Widget header_menu() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Row(
        children: [
          brn_desing(Icons.menu, Colors.black),
          Spacer(),
          brn_desing(Icons.settings, Colors.black),
        ],
      ),
    );
  }

  // en el futuro hcaer la configuracion dinamica con el builder
  Widget scroll_horizontal() {
    return Container(
      child: Expanded(
        child: ListView(
          children: [
            desing_image('assets/casa.jpg'),
            desing_image('assets/casa.jpg'),
            desing_image('assets/casa.jpg'),
            desing_image('assets/casa.jpg'),
            desing_image('assets/casa.jpg'),
            desing_image('assets/casa.jpg'),
          ],
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
  // Estos son Widgets Creados

  Widget brn_desing(IconData icon_name, Color color) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Colors.black12),
      ),
      child: CupertinoButton(
        child: Icon(
          icon_name,
          color: color,
          size: 20,
        ),
        onPressed: () => print("hellop"),
      ),
    );
  }

  Widget desing_image(image_name) {
    return Container(
      height: 180,
      width: 230,
      margin: EdgeInsetsDirectional.all(10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(image_name),
            ),
          ),
        ],
      ),
    );
  }
}
