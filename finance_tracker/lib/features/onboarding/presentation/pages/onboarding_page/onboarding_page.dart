import 'package:finance_tracker/core/constants/app_locale_keys.dart';
import 'package:finance_tracker/core/constants/time_delay_const.dart';
import 'package:finance_tracker/features/common/presentation/widgets/app_button.dart';
import 'package:finance_tracker/features/onboarding/presentation/mixins/onboarding_page_mixin.dart';
import 'package:finance_tracker/features/onboarding/presentation/pages/onboarding_page/widgets/onboarding_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../exports.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with OnBoardingPageMixin {
  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WLayout(
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: list.length,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final data = list[index];
                return SizedBox(
                  height: context.h,
                  width: context.w,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 165),
                      SizedBox(
                        height: 295,
                        width: 295,
                        child: SvgPicture.asset(
                          data.svgPath,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 86),
                      Text(
                        data.title,
                        textAlign: TextAlign.center,
                        style: context.textStyle.boardingTitle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        data.description,
                        textAlign: TextAlign.center,
                        style: context.textStyle.boardingBody,
                      ),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              top: 52,
              right: 0,
              left: 0,
              child: Row(
                spacing: 6,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: SvgPicture.asset(
                      context.appSvgs.icLogo,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    AppLocaleKeys.monex,
                    style: context.textStyle.boardingHeadline,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 53,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OnBoardingIndicator(
                    currentIndex: currentIndex,
                    itemCount: list.length,
                  ),
                  const SizedBox(height: 48),
                  AppButton(
                    onTap: () {
                      if (currentIndex != list.length - 1) {
                        setState(() {
                          currentIndex += 1;
                          pageController.animateToPage(
                            currentIndex,
                            duration: TimeDelayConst.durationMill300,
                            curve: Curves.easeInOut,
                          );
                        });
                      } else {
                        context.go(Routes.login);
                      }
                    },
                    text: currentIndex < 2 ? "Keyingisi" : "Boshlash",
                  ).paddingSymmetric(horizontal: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
