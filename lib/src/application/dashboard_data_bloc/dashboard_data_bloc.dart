import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/src/domain/models/dashboard_data_model/dashboard_data_model.dart';
import 'package:spinners_driver/src/domain/respositories/dashboard_data_repository.dart';

part 'dashboard_data_event.dart';
part 'dashboard_data_state.dart';
part 'dashboard_data_bloc.freezed.dart';

@injectable
class DashboardDataBloc extends Bloc<DashboardDataEvent, DashboardDataState> {
  DashboardDataRepository dashboardDataRepository;
  DashboardDataBloc(this.dashboardDataRepository) : super(DashboardDataState.initial()) {
    on<DashboardDataEvent>(_onDashboardDataEvent);
  }

  FutureOr<void> _onDashboardDataEvent(DashboardDataEvent event, Emitter<DashboardDataState> emit) async {
    try {
      emit(state.copyWith(getDashboardDataStatus: Status.loading()));
      // // Simulate a network call
      // await Future.delayed(const Duration(seconds: 2));
      var response = await dashboardDataRepository.getDashboardData();
      emit(state.copyWith(
        getDashboardDataStatus: Status.success(),
        dashboardDataModel: response,
      ));
    } catch (e) {
      emit(state.copyWith(
        getDashboardDataStatus: Status.failure(e.toString()),
      ));
    }
  }
}
