import 'package:buybox/common/color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common/func.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController();
  String onBoardText= "Next";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:[
            PageView(
              controller: pageController,
              onPageChanged: (index){
                if(index ==2){
                  onBoardText = "Get Started";
                }else{
                  onBoardText="Next";
                }
                setState(() {

                });
              },
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/image/onBoarding2.jpg',
                      height: MediaQuery.of(context).size.height *
                          0.6, // 50% de la hauteur de l'écran
                      width: MediaQuery.of(context)
                          .size
                          .width, // 100% de la largeur de l'écran
                      fit: BoxFit.cover, // Remplir en couvrant
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,top: 50),
                      child: RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                              text: 'Welcome to ',
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'BuyBox ',
                                    style: TextStyle(color: greenColor)),
                                TextSpan(text: 'We\'re exited to have you onboard')
                              ])),
                    ),
                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/image/onBoarding.jpg',
                      height: MediaQuery.of(context).size.height *
                          0.6, // 50% de la hauteur
                      width:
                      MediaQuery.of(context).size.width, // 100% de la largeur
                      fit: BoxFit.cover,
                    ),
                    Padding(padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
                      child: RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'Need inspiration? \n',style: TextStyle(color: greenColor))
                                ,TextSpan(
                                    text:'Check out our recommended items and deals .'
                                )
                              ]
                          )),
                    ),
                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/image/onBoarding3.jpg',
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Padding(padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
                      child: RichText(text: const TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                          text: 'We\'ll deliver your groceries straight to your doorstep.\n',
                          children: [
                            TextSpan(text: 'Enjoy!',style: TextStyle(color: greenColor))
                          ]
                      )),
                    ),

                  ],
                ),
              ],
            ),
          Align(
            alignment: const Alignment(0, 1),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20 , bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                      effect: const ExpandingDotsEffect(),
                      controller: pageController,
                      count: 3
                  ),
                  onBordingBtn('$onBoardText',pageController,context)
                ],
              ),
            ),
          )
          ],
        ),
      ),
    );
  }

}
