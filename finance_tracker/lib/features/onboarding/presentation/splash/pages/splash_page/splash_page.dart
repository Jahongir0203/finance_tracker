import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../exports.dart';
import '../../blocs/splash_bloc/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashBloc>()..add(SplashEvent.started()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state.status.isLoaded()) {
            context.go(Routes.onBoarding);
          }
        },
        child: Scaffold(
          body: Align(
            alignment: AlignmentGeometry.center,
            child: FadeTransition(
              opacity: _animation,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 144,
                    width: 144,
                    child: SvgPicture.asset(AppSvgs.icLogo, fit: BoxFit.cover),
                  ),
                  Text("Monex", style: context.textStyle.splashTitle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
