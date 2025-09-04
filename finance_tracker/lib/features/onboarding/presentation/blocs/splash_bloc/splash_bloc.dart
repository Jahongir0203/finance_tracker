import 'package:finance_tracker/exports.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'splash_event.dart';

part 'splash_state.dart';

part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      await Future.delayed(TimeDelayConst.duration3);
      final value = await getIt<StorageService>().getOnBoarding();

      if (value) {
        final user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          emit(state.copyWith(status: RequestStatus.loaded));
        } else {
          emit(state.copyWith(status: RequestStatus.loadingMore));
        }
      } else {
        emit(state.copyWith(status: RequestStatus.warning));
      }
    });
  }
}
