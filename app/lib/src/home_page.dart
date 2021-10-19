import 'package:app/routes/routesPage.dart';
import 'package:app/src/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body_content(context),
    );
  }

  Widget body_content(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                header_menu(context),
                content_title(),
                scroll_horizontal(context),
                Container(
                    margin: EdgeInsetsDirectional.only(start: 40, bottom: 30),
                    child: Text(
                      "Principales:",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                vertical_cards(context),
              ],
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }

  void _openMyPage(BuildContext context) {
    Navigator.push<void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const DetailPage(),
      ),
    );
  }

  Widget header_menu(BuildContext context) {
    return Container(
      child: Row(
        children: [
          brn_desing_drawer(context, Icons.menu, Colors.black, Colors.white,
              drawer_content(context)),
          Spacer(),
          brn_desing(
              context, Icons.settings, Colors.black, Colors.white, 'settings'),
        ],
      ),
    );
  }

  Widget content_title() {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 40),
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Busca tu hogar",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Divider(),
          Text(
            "Una nueva forma de buscar tu propiedad",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  // Esta no es la forma correcta per tenemos el dise;o del drawe
  // pagina de referencia: https://codea.app/blog/menu-lateral-drawer-en-flutter
  Widget brn_desing_drawer(BuildContext context, IconData icon_name,
      Color color, Color color_background, Widget drawer) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: color_background,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Colors.black12),
      ),
      child: CupertinoButton(
        child: Icon(
          icon_name,
          color: color,
          size: 20,
        ),
        onPressed: () => drawer_content(context),
      ),
    );
  }

  Widget drawer_content(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Item 1'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ]),
    );
  }

  Widget vertical_cards(BuildContext context) {
    return Container(
      child: Column(
        children: [
          card2(context, 'assets/casa.jpg'),
          card2(context, 'assets/casa.jpg'),
          card2(context, 'assets/casa.jpg'),
          card2(context, 'assets/casa.jpg'),
        ],
      ),
    );
  }

  // en el futuro hcaer la configuracion dinamica con el builder
  Widget scroll_horizontal(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          card1(context, 'assets/casa.jpg'),
          card1(context, 'assets/casa.jpg'),
          card1(context, 'assets/casa.jpg'),
          card1(context, 'assets/casa.jpg'),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  // 'assets/casa.jpg'
  Widget card1(BuildContext context, String img) {
    return GestureDetector(
      child: Column(
        children: [
          desing_card(desing_image(img, 230, 170), text_card(18, 14, 18, 10)),
        ],
      ),
      onTap: (() => {
            Navigator.pushNamed(context, 'detail'),
          }),
    );
  }

  Widget card2(BuildContext context, String img) {
    return GestureDetector(
      child: Column(
        children: [
          desing_card(desing_image(img, 345, 250), text_card(25, 18, 25, 40)),
        ],
      ),
      onTap: (() => {
            Navigator.pushNamed(context, 'detail'),
          }),
    );
  }

  Widget desing_card(Widget image, Widget text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          text,
        ],
      ),
    );
  }

  Widget text_card(double size_price_font, double size_title_font,
      double size_subtitle_font, double bottom_data) {
    return Container(
      margin:
          EdgeInsetsDirectional.only(start: 20, end: 20, bottom: bottom_data),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                new String.fromCharCodes(new Runes('\u0024')) + "2000 ",
                style: TextStyle(
                    fontSize: size_price_font, fontWeight: FontWeight.bold),
              ),
              Text(
                "Concepcion, Chile",
                style:
                    TextStyle(fontSize: size_title_font, color: Colors.black45),
              ),
            ],
          ),
          Text(
            "Concepcion, Chile",
            style: TextStyle(
              fontSize: size_subtitle_font,
            ),
          ),
        ],
      ),
    );
  }

  // Estos son Widgets Creados

  Widget brn_desing(BuildContext context, IconData icon_name, Color color,
      Color color_background, String path) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: color_background,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Colors.black12),
      ),
      child: CupertinoButton(
        child: Icon(
          icon_name,
          color: color,
          size: 20,
        ),
        onPressed: () => Navigator.pushNamed(context, path),
      ),
    );
  }

  Widget desing_image(image_name, double width_data, double height_data) {
    return Container(
      height: height_data,
      width: width_data,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
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
