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
import 'package:spinners_laundry/app/services/api_services/api_service.dart'
    as _i148;
import 'package:spinners_laundry/src/application/auth_bloc/auth_bloc.dart'
    as _i935;
import 'package:spinners_laundry/src/application/home_bloc/home_bloc.dart'
    as _i551;
import 'package:spinners_laundry/src/domain/repositories/auth_repository.dart'
    as _i854;
import 'package:spinners_laundry/src/domain/repositories/home_repository.dart'
    as _i42;
import 'package:spinners_laundry/src/infrastructure/i_auth_respository.dart'
    as _i133;
import 'package:spinners_laundry/src/infrastructure/i_home_respository.dart'
    as _i838;
import 'package:spinners_laundry/src/application/bloc/address_bloc.dart'
    as _i876;
import 'package:spinners_laundry/src/domain/repositories/address_repository.dart'
    as _i125;
import 'package:spinners_laundry/src/infrastructure/i_address_repository.dart'
    as _i577;

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
    gh.lazySingleton<_i148.Api>(() => _i148.Api());
    gh.lazySingleton<_i42.HomeRepository>(
        () => _i838.HomeRepositoryImplementation(api: gh<_i148.Api>()));
    gh.lazySingleton<_i854.AuthRepository>(
        () => _i133.AuthRepositoryImplementation(api: gh<_i148.Api>()));
    gh.factory<_i935.AuthBloc>(
        () => _i935.AuthBloc(gh<_i854.AuthRepository>()));
    gh.factory<_i551.HomeBloc>(() => _i551.HomeBloc(gh<_i42.HomeRepository>()));
    gh.lazySingleton<_i125.AddressRepository>(
        () => _i577.AddressRepositoryImplementation(api: gh<_i148.Api>()));
    gh.factory<_i876.AddressBloc>(
        () => _i876.AddressBloc(gh<_i125.AddressRepository>()));
    return this;
  }
}
