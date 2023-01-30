// ignore_for_file: avoid_unnecessary_containers, file_names, unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khodrawati/constants.dart';
import 'package:khodrawati/models/FruitModels.dart';
import 'package:khodrawati/models/categories.dart';
import 'package:khodrawati/views/cardFruit.dart';
import 'package:lottie/lottie.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class HomePgaeKhodawati extends StatelessWidget {
  const HomePgaeKhodawati({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.notifications_on_outlined,
                      color: Colors.black,
                      size: 35,
                    ),
                    Text("خضروآتي",
                        style: GoogleFonts.rakkas(
                            color: primaryColor,
                            fontSize: 38,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Bonjour ! Vous ètes les Bienvenus",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SearchBarAnimation(
                  isSearchBoxOnRightSide: true,
                  trailingWidget: Icon(Icons.search),
                  textEditingController: TextEditingController(),
                  isOriginalAnimation: true,
                  buttonBorderColour: Colors.black45,
                  buttonWidget: Icon(Icons.close),
                  onFieldSubmitted: (String value) {
                    debugPrint('onFieldSubmitted value $value');
                  },
                  secondaryButtonWidget: Icon(Icons.search),
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Lottie.asset("assets/127224-thanksgiving-basket.json"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return CategorieCard(
                        categorieCard: Categorie.cateforieList[index],
                      );
                    },
                    itemCount: Categorie.cateforieList.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Fruits frèches",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: FruitModels.listfruits.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return CardFruit(
                          fruitModels: FruitModels.listfruits[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategorieCard extends StatelessWidget {
  const CategorieCard({
    super.key,
    required this.categorieCard,
  });
  final Categorie categorieCard;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  image:
                      DecorationImage(image: AssetImage(categorieCard.path))),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              categorieCard.title,
              style: TextStyle(color: Colors.grey.shade900, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
