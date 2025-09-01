import 'package:bloc/bloc.dart';
import 'package:finance_tracker/exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.dart';

part 'splash_state.dart';

part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      await Future.delayed(TimeDelayConst.duration3);
      emit(state.copyWith(status: RequestStatus.loaded));
    });
  }
}
