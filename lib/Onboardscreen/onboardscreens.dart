import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:returnpostcustomer/Onboardscreen/onboardingscreenone.dart';
import 'package:returnpostcustomer/Onboardscreen/onboardingscreenthree.dart';
import 'package:returnpostcustomer/Onboardscreen/onboardscreentwo.dart';
import 'package:returnpostcustomer/authentication/signinpage.dart';

class OnBoardingScreens extends StatefulWidget {
  @override
  _OnBoardingScreensState createState() => _OnBoardingScreensState();
}

int currentPage = 0;

final _controller = PageController(initialPage: 0);
List<Widget> _pages = [
  Column(children: [Expanded(child: OnboardingScreenOne())]),
  Column(children: [Expanded(child: OnboardingScreenTwo())]),
  Column(children: [Expanded(child: OnboardingScreenThree())]),
];

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  @override
  Widget build(BuildContext context) {
    //  Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff404040),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: _pages,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: DotsIndicator(
                  dotsCount: _pages.length,
                  position: currentPage.toDouble(),
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: Colors.black87, // Inactive color
                    activeColor: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffEB5757),
                      minimumSize: Size(150, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Signinpage()));
                    },
                    child: Text(
                      currentPage == 0
                          ? 'Next'
                          : currentPage == 1
                              ? 'Next'
                              : 'Start',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
