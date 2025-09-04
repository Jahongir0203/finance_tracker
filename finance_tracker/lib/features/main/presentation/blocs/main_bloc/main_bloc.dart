import 'package:finance_tracker/exports.dart';

part 'main_event.dart';

part 'main_state.dart';

part 'main_bloc.freezed.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState()) {
    on<_Changed>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }
}
