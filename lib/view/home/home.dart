import 'package:buybox/common/color.dart';
import 'package:buybox/view/home/homeView/cardView.dart';
import 'package:buybox/view/home/homeView/exchangeView.dart';
import 'package:buybox/view/home/homeView/homeView.dart';
import 'package:buybox/view/home/homeView/likeView.dart';
import 'package:buybox/view/home/homeView/userView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  // Méthode pour changer de page via le BottomAppBar
  void itemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index); // Défiler vers la page correspondante
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index; // Mettre à jour l'index lorsque l'utilisateur fait défiler
            });
          },
          children: const [
            Homeview(),
            Exchangeview(),
            Cardview(),
            Likeview(),
            Userview(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  itemTap(0); // Aller à la page "Home"
                },
                icon: FaIcon(FontAwesomeIcons.house,
                    color: selectedIndex == 0 ? blueColor : Colors.grey),
              ),
              IconButton(
                onPressed: () {
                  itemTap(1); // Aller à la page "Business"
                },
                icon: FaIcon(FontAwesomeIcons.exchange,
                    color: selectedIndex == 1 ? blueColor : Colors.grey),
              ),
              CircleAvatar(
                backgroundColor: blueColor,
                radius: 30,
                child: IconButton(
                  onPressed: () {
                    itemTap(2); // Aller à la page "School"
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.cartPlus,
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  itemTap(3); // Aller à la page "Profile"
                },
                icon: FaIcon(FontAwesomeIcons.heart,
                    color: selectedIndex == 3 ? blueColor : Colors.grey),
              ),
              IconButton(
                onPressed: () {
                  itemTap(4); // Aller à la page "Settings"
                },
                icon: FaIcon(FontAwesomeIcons.user,
                    color: selectedIndex == 4 ? blueColor : Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
