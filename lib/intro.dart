import 'package:btc_app/widgets/intro_body.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatelessWidget {

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: Column(
            children: [
              Expanded(
                flex: 10,
                child: PageView(
                  controller: pageController,
                  children: [
                    IntroBody(
                      image: "assets/intro1.png",
                      title: "Pay and settle invoices",
                      subtitle: "Buy and pay for invoices online in shops that support bitcoin payments",
                      subtitlePadding: 85,
                      emptyContainer: 183,
                    ),
                    IntroBody(
                      image: "assets/intro2.png",
                      title: "Send money",
                      subtitle: "Send money to friends and family and settle business cross-border payments.",
                      subtitlePadding: 75,
                      emptyContainer: 200,
                    ),
                    IntroBody(
                      image: "assets/intro3.png",
                      title: "Withdraw to fiat",
                      subtitle: "Exchange BTC in real-time to your local currency and send to bank or mobile money",
                      subtitlePadding: 65,
                      emptyContainer: 173,
                    ),
                    IntroBody(
                      image: "assets/intro4.png",
                      title: "Secure and lightning fast",
                      subtitle: "Leverage the power of Bitcoin lightning network for secure, affordable, and fast transcations.",
                      subtitlePadding: 50,
                      emptyContainer: 160,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SmoothPageIndicator(
                      controller: pageController,
                      count: 4,
                      effect: ScrollingDotsEffect(
                        dotWidth: 30,
                        dotHeight: 10,
                        spacing: 15,
                        activeDotScale: 1,
                        activeDotColor: Color(0xff40E0E0),
                      ),
                      onDotClicked: (index) {
                        // pageController.changePage(index);
                      }),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
