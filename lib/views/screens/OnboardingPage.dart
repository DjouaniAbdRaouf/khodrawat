// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khodrawati/views/buildOnboarding.dart';
import 'package:khodrawati/views/screens/HomePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  var controller = PageController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  bool islast = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    controller.jumpToPage(2);
                  },
                  child: Text("Skip")),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(spacing: 16),
                ),
              ),
              islast
                  ? TextButton(
                      onPressed: () {
                        Get.to(HomePgaeKhodawati());
                      },
                      child: Text("Get Started"),
                    )
                  : TextButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 1000),
                            curve: Curves.fastOutSlowIn);
                      },
                      child: Text("Next")),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: 80.0),
          child: PageView(
            onPageChanged: (value) {
              setState(() {
                islast = value == 2;
              });
            },
            controller: controller,
            children: [
              BuildOnboarding(
                  color: Colors.white,
                  path: "assets/undraw_add_to_cart_re_wrdo.svg",
                  title: "Commander a Distance",
                  subtitle:
                      " Découvrez notre sélection de service et passez commande sans attendre ! "),
              BuildOnboarding(
                  color: Colors.green.shade100,
                  path: "assets/undraw_deliveries_2r4y.svg",
                  title: "Livraison a domicile",
                  subtitle:
                      "Faites-vous livrer vos Legumes et fruits directement chez vous."),
              BuildOnboarding(
                  color: Colors.grey.shade100,
                  path: "assets/undraw_order_confirmed_re_g0if.svg",
                  title: "Legumes",
                  subtitle:
                      "Quand votre commande effectuée ! Le Service de Livraison démarrer vers votre Localisation "),
            ],
          ),
        ),
      ),
    );
  }
}
