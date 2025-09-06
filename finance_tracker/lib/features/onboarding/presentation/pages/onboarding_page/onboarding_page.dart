import 'package:animate_do/animate_do.dart';
import 'package:finance_tracker/features/common/presentation/widgets/app_button.dart';
import 'package:finance_tracker/features/onboarding/presentation/blocs/onboarding_bloc/on_boarding_bloc.dart';
import 'package:finance_tracker/features/onboarding/presentation/mixins/onboarding_page_mixin.dart';
import 'package:finance_tracker/features/onboarding/presentation/pages/onboarding_page/widgets/onboarding_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../exports.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with OnBoardingPageMixin {
  late PageController _pageController;
  final ValueNotifier<int> _index = ValueNotifier(0);

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => getIt<OnBoardingBloc>()..add(OnBoardingEvent.started()),
      child: BlocBuilder<OnBoardingBloc, OnBoardingState>(
        builder: (context, state) {
          return ValueListenableBuilder(
            valueListenable: _index,
            builder: (context, value, child) {
              return WLayout(
                child: Scaffold(
                  body: Stack(
                    children: [
                      PageView.builder(
                        controller: _pageController,
                        itemCount: list.length,
                        onPageChanged: (value) => _index.value = value,
                        physics: const AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final data = list[index];
                          return FadeInUp(
                            duration: TimeDelayConst.durationMill500,
                            child: SizedBox(
                              height: context.h,
                              width: context.w,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(height: 165),
                                  SizedBox(
                                    height: 226,
                                    width: 250,
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
                              currentIndex: _index.value,
                              itemCount: list.length,
                            ),
                            const SizedBox(height: 48),
                            AppButton(
                              onTap: () {
                                if (_index.value != list.length - 1) {
                                  _pageController.nextPage(
                                    duration: TimeDelayConst.durationMill300,
                                    curve: Curves.decelerate,
                                  );
                                } else {
                                  context.go(Routes.login);
                                }
                              },
                              text: _index.value < 2 ? "Keyingisi" : "Boshlash",
                            ).paddingSymmetric(horizontal: 24),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
