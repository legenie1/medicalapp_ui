import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:medicalUI/views/login.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoard(
        pageController: _pageController,
        onSkip: () {},
        onDone: () {},
        onBoardData: onBoardData,
        titleStyles: const TextStyle(
            color: Color.fromARGB(255, 15, 62, 129),
            fontSize: 23,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.15),
        descriptionStyles: TextStyle(
          fontSize: 16,
          color: Colors.brown.shade300,
        ),
        pageIndicatorStyle: const PageIndicatorStyle(
            width: 100,
            inactiveColor: Color.fromARGB(255, 55, 166, 230),
            activeColor: Color.fromARGB(255, 34, 85, 194),
            inactiveSize: Size(8, 8),
            activeSize: Size(12, 12)),
        skipButton: TextButton(
          onPressed: () {},
          child: const Text(
            "Skip",
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
        ),
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return InkWell(
              onTap: () => _onNextTap(state, context),
              child: Container(
                width: 260,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 15, 62, 129),
                        Color.fromARGB(255, 65, 93, 194)
                      ],
                    )),
                child: Text(
                  state.isLastPage ? "Demarrer" : "Suivant",
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState, context) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(onBoardState.page + 1,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOutSine);
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    }
  }

  final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
        title: "Bienvenue sur MENU",
        description: "Votre application de reservation d'un buffet à distance",
        imgUrl: "assets/images/slide1.jpg"),
    const OnBoardModel(
        title: "Restaurant à proximité !",
        description:
            "Vous pouvez egalement recherher un plat en fonction du restaurant",
        imgUrl: "assets/images/slide1.png"),
    const OnBoardModel(
        title: "Demande de Livraison ",
        description: "Vous pouvez demander une livraison de votre buffet",
        imgUrl: "assets/images/slide2.png"),
    const OnBoardModel(
        title: "Restaurant à proximité",
        description: "Rechercher un restaurant à proximité",
        imgUrl: "assets/images/slide1.jpg"),
  ];
}
