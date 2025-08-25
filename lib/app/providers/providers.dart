import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spinners_driver/app/locator/locator.dart';
import 'package:spinners_driver/src/application/auth_bloc/auth_bloc.dart';
import 'package:spinners_driver/src/application/dashboard_data_bloc/dashboard_data_bloc.dart';
import 'package:spinners_driver/src/application/order_bloc/order_bloc.dart';
List<BlocProvider> kBlocProviders = [
    BlocProvider<AuthBloc>(create: (context) => getIt<AuthBloc>()),
    BlocProvider<DashboardDataBloc>(create: (context) => getIt<DashboardDataBloc>()),
    BlocProvider<OrderBloc>(create: (context) => getIt<OrderBloc>()),

];
