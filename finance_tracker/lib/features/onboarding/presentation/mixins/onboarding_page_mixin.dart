import 'package:finance_tracker/core/core.dart';
import 'package:finance_tracker/features/onboarding/data/models/onboarding_model.dart';

mixin OnBoardingPageMixin {
  List<OnBoardingModel> list = [
    OnBoardingModel(
      id: 0,
      svgPath: navigatorKey.currentContext!.appSvgs.onBoarding1,
      title: "Xarajatlarni yozish",
      description:
          "Har kuni xarajatlaringizni yozib boring,\nbu pulni boshqarishga yordam beradi",
    ),
    OnBoardingModel(
      id: 1,
      svgPath: navigatorKey.currentContext!.appSvgs.onBoarding2,
      title: "Pulni oddiy boshqarish",
      description: "Ortiqcha xarajat qilsangiz,\nogohlantirish olasiz",
    ),
    OnBoardingModel(
      id: 2,
      svgPath: navigatorKey.currentContext!.appSvgs.onBoarding3,
      title: "Kuzatish va tahlil qilish oson",
      description:
          "Xarajatlaringizni kuzatish, ortiqcha\nsarf-xarajat qilmasligingizga yordam beradi",
    ),
  ];
}
