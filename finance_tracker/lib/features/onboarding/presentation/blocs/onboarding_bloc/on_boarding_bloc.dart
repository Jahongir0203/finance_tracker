import 'package:finance_tracker/exports.dart';

part 'on_boarding_event.dart';

part 'on_boarding_state.dart';

part 'on_boarding_bloc.freezed.dart';

@injectable
class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState.initial()) {
    on<_Started>((event, emit) async {
      await getIt<StorageService>().setOnboarding(true);
    });
  }
}
