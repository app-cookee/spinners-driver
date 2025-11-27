import 'dart:async';
import 'dart:developer';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/src/domain/models/dashboard_data_model/dashboard_data_model.dart';
import 'package:spinners_driver/src/domain/models/notification_model/notification_model.dart';
import 'package:spinners_driver/src/domain/respositories/dashboard_data_repository.dart';

part 'dashboard_data_event.dart';
part 'dashboard_data_state.dart';
part 'dashboard_data_bloc.freezed.dart';

@injectable
class DashboardDataBloc extends Bloc<DashboardDataEvent, DashboardDataState> {
  DashboardDataRepository dashboardDataRepository;
  DashboardDataBloc(this.dashboardDataRepository) : super(DashboardDataState.initial()) {
    on<DashboardDataEvent>(_onDashboardDataEvent);
    on<_GetNotificationsList>(_onGetNotificationsList);
    on<_PaginateNotificationsList>(_onPaginateNotificationsList);
  }

  FutureOr<void> _onDashboardDataEvent(DashboardDataEvent event, Emitter<DashboardDataState> emit) async {
    try {
      emit(state.copyWith(getDashboardDataStatus: Status.loading()));
      // // Simulate a network call
      // await Future.delayed(const Duration(seconds: 2));
      var response = await dashboardDataRepository.getDashboardData();
      log(response.toString(),name: "dashborad data response");
      emit(state.copyWith(
        getDashboardDataStatus: Status.success(),
        dashboardDataModel: response,
      ));
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(
        getDashboardDataStatus: Status.failure(e.toString()),
      ));
    }
  }

  FutureOr<void> _onGetNotificationsList(_GetNotificationsList event, Emitter<DashboardDataState> emit) async {
  try {
      emit(state.copyWith(
        getNotificationsListStatus: Status.loading(),
      ));
      var response = await dashboardDataRepository.getNotificationsList(event.limit,event.skip);
       final bool hasMoreItems = response.notificationsList.length == event.limit;
      emit(state.copyWith(
          getNotificationsListStatus: Status.success(), notificationsList: response.notificationsList,   totalCount: response.totalCount,
      hasMore: hasMoreItems,
      isLoadingMore: false));
    } catch (e) {
      emit(state.copyWith(getNotificationsListStatus: Status.failure(e.toString(),),  isLoadingMore: false,));
    }
  }

  FutureOr<void> _onPaginateNotificationsList(_PaginateNotificationsList event, Emitter<DashboardDataState> emit) async {
  try{
      log("paginating notifications list");
              emit(state.copyWith(
      isLoadingMore: true
    ));
      var response = await dashboardDataRepository.getNotificationsList(event.limit,event.skip);
       final newList = [...state.notificationsList, ...response.notificationsList];
           final bool hasMoreItems = response.notificationsList.length >= event.limit;
              emit(state.copyWith(
       notificationsList : newList,
        totalCount: response.totalCount,
        
        hasMore: hasMoreItems,
        isLoadingMore: false,
      ));
    }
    catch (e) {
      log("not paginating notifications list");
      emit(state.copyWith(
       isLoadingMore: false
      ));
    }
  }
}
