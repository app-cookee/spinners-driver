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
import 'package:spinners_driver/src/application/dashboard_data_bloc/dashboard_data_bloc.dart'
    as _i766;
import 'package:spinners_driver/src/application/delivery_bloc/delivery_bloc.dart'
    as _i9;
import 'package:spinners_driver/src/application/network_bloc/network_bloc.dart'
    as _i396;
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart'
    as _i277;
import 'package:spinners_driver/src/domain/respositories/auth_respository.dart'
    as _i701;
import 'package:spinners_driver/src/domain/respositories/dashboard_data_repository.dart'
    as _i823;
import 'package:spinners_driver/src/domain/respositories/delivery_repository.dart'
    as _i286;
import 'package:spinners_driver/src/domain/respositories/order_repository.dart'
    as _i168;
import 'package:spinners_driver/src/infrastructure/i_auth_repository.dart'
    as _i1058;
import 'package:spinners_driver/src/infrastructure/i_dashboard_data_repository.dart'
    as _i813;
import 'package:spinners_driver/src/infrastructure/i_delivery_repository.dart'
    as _i846;
import 'package:spinners_driver/src/infrastructure/i_order_repository.dart'
    as _i1030;

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
    gh.factory<_i396.NetworkBloc>(() => _i396.NetworkBloc());
    gh.lazySingleton<_i551.Api>(() => _i551.Api());
    gh.lazySingleton<_i823.DashboardDataRepository>(() =>
        _i813.DashboardDataRepositoryImplementation(api: gh<_i551.Api>()));
    gh.lazySingleton<_i168.OrderRepository>(
        () => _i1030.OrderRepositoryImplementation(api: gh<_i551.Api>()));
    gh.lazySingleton<_i286.DeliveryRepository>(
        () => _i846.DeliveryRepositoryImplementation(api: gh<_i551.Api>()));
    gh.factory<_i766.DashboardDataBloc>(
        () => _i766.DashboardDataBloc(gh<_i823.DashboardDataRepository>()));
    gh.factory<_i9.DeliveryBloc>(
        () => _i9.DeliveryBloc(gh<_i286.DeliveryRepository>()));
    gh.lazySingleton<_i701.AuthRepository>(
        () => _i1058.AuthRepositoryImplementation(api: gh<_i551.Api>()));
    gh.factory<_i403.AuthBloc>(
        () => _i403.AuthBloc(gh<_i701.AuthRepository>()));
    gh.factory<_i277.OrderBloc>(
        () => _i277.OrderBloc(gh<_i168.OrderRepository>()));
    return this;
  }
}
