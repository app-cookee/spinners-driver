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
import 'package:spinners_driver/app/services/api_services/api_service.dart'
    as _i551;
import 'package:spinners_driver/src/application/auth_bloc/auth_bloc.dart'
    as _i403;
import 'package:spinners_driver/src/infrastructure/i_auth_repository.dart'
    as _i48;
import 'package:spinners_driver/src/domain/respositories/auth_respository.dart'
    as _i533;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i551.Api>(() => _i551.Api());
    gh.lazySingleton<_i533.AuthRepository>(
        () => _i48.AuthRepositoryImplementation(api: gh<_i551.Api>()));
    gh.factory<_i403.AuthBloc>(
        () => _i403.AuthBloc(gh<_i533.AuthRepository>()));
    return this;
  }
}
