import 'package:fluter_intro_screen/components/default_button.dart';
import 'package:fluter_intro_screen/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

import '../../constants.dart';
import '../../size_config.dart';

class IntroScreen extends StatefulWidget {
  static String routeName = "/intro";
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        top: true,
        child: IntroductionScreen(
          globalBackgroundColor: kPrimaryColor,
          pages: [
            PageViewModel(
                decoration: PageDecoration(
                  titleTextStyle: const TextStyle(color: Colors.white),
                  bodyTextStyle: introTextStyle,
                ),
                title: "Talk with experts",
                body:
                    "Get expert opinion for your crypto investments from our curated list of crypto experts",
                image: Image.asset(
                  'assets/images/intro_1.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.5,
                )),
            PageViewModel(
                decoration: PageDecoration(
                  titleTextStyle: const TextStyle(color: Colors.white),
                  bodyTextStyle: introTextStyle,
                ),
                title: "Book anytime",
                body:
                    "Select your convenient time to clear your crypto related doubts and issues.",
                image: Image.asset(
                  'assets/images/intro_2.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.5,
                )),
            PageViewModel(
              decoration: PageDecoration(
                titleTextStyle: const TextStyle(color: Colors.white),
                bodyTextStyle: introTextStyle,
              ),
              title: "Create your portfolio",
              body:
                  "Create your own portfolio of selected cryptos and watch for changes in it.",
              image: Image.asset(
                'assets/images/intro_3.png',
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            PageViewModel(
              bodyWidget: Column(
                children: <Widget>[
                  Text(
                    'Dr. Crypto',
                    style: TextStyle(
                      fontFamily: 'Poppins-Bold',
                      fontSize: getProportionateScreenHeight(36),
                      color: const Color(0xffFFFFFF),
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(16)),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                    child: Text(
                      'We are here to help you invest better\nand make great returns',
                      textAlign: TextAlign.center,
                      style: introTextStyle,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(32)),
                ],
              ),
              decoration: const PageDecoration(
                titleTextStyle: TextStyle(color: Colors.white),
              ),
              title: "Welcome to,",
              image: Image.asset(
                'assets/images/intro_1.png',
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              footer: DefaultButton(
                press: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                      (route) => false);
                },
                text: 'GET STARTED',
              ),
            ),
          ],
          showDoneButton: true,
          showSkipButton: true,
          skip: const Icon(Icons.skip_next),
          next: const Icon(Icons.navigate_next),
          done: const Text(
            "Done",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: const Color(0xffffffff),
            color: Colors.white24,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          baseBtnStyle:
              TextButton.styleFrom(foregroundColor: const Color(0xffffffff)),
          onDone: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
                (route) => false);
          },
        ),
      ),
    );
  }
}
