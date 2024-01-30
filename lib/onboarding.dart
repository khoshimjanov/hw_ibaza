import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:hw_i_baza/assets/icons.dart';
import 'package:hw_i_baza/assets/images.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController pageController;
  int page = 0;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(58.0),
                  child: Container(
                    width: 160,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: Row(
                      children: [
                        const Gap(10),
                        const Expanded(child: Text("O‘tkazib yuborish")),
                        SvgPicture.asset(AppIcons.next)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.625,
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    page = index;
                  });
                },
                controller: pageController,
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "10 000 dan ortiq mahsulotlar va qulay interfeys",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "iBaza ilovasida 10 000 dan ortiq mahsulotlar joy olgan",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                          child: Image.asset(
                        AppImages.location,
                      )),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Maxsus chegirmalar!",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Ilova orqali maxsus chegirma va kuponlardan baxramand bo‘ling!",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                          child: Image.asset(
                        AppImages.gift,
                      )),
                    ],
                  ),
                  Column(
                    children: [ const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Hoziroq ro‘yxatdan o‘ting!!",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Ro‘yxatdan o‘tib, ilova imkoniyatlaridan to‘liq foydalaning",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                          child: 
                      Image.asset(
                        AppImages.rocket,)
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (page != 0)
                    GestureDetector(
                      onTap: () {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Container(
                        width: 44,
                        height: 44,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SvgPicture.asset(AppIcons.previous),
                      ),
                    )
                  else if (page == 1)
                    GestureDetector(
                      onTap: () {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Container(
                        width: 44,
                        height: 44,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SvgPicture.asset(AppIcons.next),
                      ),
                    )
                  else
                    const Gap(50),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.grey,
                      dotWidth: 8,
                      dotHeight: 8,
                      dotColor: Colors.grey,
                      expansionFactor: 3,
                      spacing: 4,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (page == 2) {
                      } else if (page == 1) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset(AppIcons.next),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
