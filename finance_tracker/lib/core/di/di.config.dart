// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/common/presentation/blocs/theme_bloc/theme_bloc.dart'
    as _i1002;
import '../../features/main/presentation/blocs/main_bloc/main_bloc.dart'
    as _i784;
import '../../features/onboarding/presentation/blocs/splash_bloc/splash_bloc.dart'
    as _i861;
import '../services/storage_service.dart' as _i306;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i784.MainBloc>(() => _i784.MainBloc());
    gh.factory<_i861.SplashBloc>(() => _i861.SplashBloc());
    gh.factory<_i1002.ThemeBloc>(() => _i1002.ThemeBloc());
    gh.singleton<_i306.StorageService>(() => _i306.StorageService());
    return this;
  }
}
