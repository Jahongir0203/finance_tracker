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

import '../../features/auth/data/datasource/auth_datasource.dart' as _i43;
import '../../features/auth/data/repository/auth_repository_impl.dart' as _i409;
import '../../features/auth/domain/repository/auth_repository.dart' as _i961;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/domain/usecases/logout_usecase.dart' as _i48;
import '../../features/auth/domain/usecases/register_usecase.dart' as _i941;
import '../../features/auth/domain/usecases/update_password_usecase.dart'
    as _i387;
import '../../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i661;
import '../../features/common/presentation/blocs/theme_bloc/theme_bloc.dart'
    as _i1002;
import '../../features/main/presentation/blocs/main_bloc/main_bloc.dart'
    as _i784;
import '../../features/onboarding/presentation/blocs/onboarding_bloc/on_boarding_bloc.dart'
    as _i222;
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
    gh.factory<_i1002.ThemeBloc>(() => _i1002.ThemeBloc());
    gh.factory<_i784.MainBloc>(() => _i784.MainBloc());
    gh.factory<_i222.OnBoardingBloc>(() => _i222.OnBoardingBloc());
    gh.factory<_i861.SplashBloc>(() => _i861.SplashBloc());
    gh.singleton<_i306.StorageService>(() => _i306.StorageService());
    gh.lazySingleton<_i43.AuthDataSource>(() => _i43.AuthDataSourceImpl());
    gh.lazySingleton<_i961.AuthRepository>(
      () => _i409.AuthRepositoryImpl(gh<_i43.AuthDataSource>()),
    );
    gh.factory<_i941.RegisterUseCase>(
      () => _i941.RegisterUseCase(gh<_i961.AuthRepository>()),
    );
    gh.factory<_i188.LoginUseCase>(
      () => _i188.LoginUseCase(gh<_i961.AuthRepository>()),
    );
    gh.factory<_i48.LogOutUseCase>(
      () => _i48.LogOutUseCase(gh<_i961.AuthRepository>()),
    );
    gh.factory<_i387.UpdatePasswordUseCase>(
      () => _i387.UpdatePasswordUseCase(gh<_i961.AuthRepository>()),
    );
    gh.factory<_i661.AuthBloc>(
      () => _i661.AuthBloc(
        gh<_i188.LoginUseCase>(),
        gh<_i941.RegisterUseCase>(),
        gh<_i387.UpdatePasswordUseCase>(),
      ),
    );
    return this;
  }
}
