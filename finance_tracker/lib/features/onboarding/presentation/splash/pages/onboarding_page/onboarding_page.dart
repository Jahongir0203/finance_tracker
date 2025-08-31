import '../../../../../../exports.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'onboarding',
          style: TextStyle(fontSize: 40, color: AppColors.cF5F6F7),
        ),
      ),
    );
  }
}
