part of 'dashboard_data_bloc.dart';

@freezed
abstract class DashboardDataState with _$DashboardDataState {
  factory DashboardDataState({
    required Status getDashboardDataStatus,
    required DashboardDataModel dashboardDataModel,
    required Status getNotificationsListStatus,
    required List<NotificationModel> notificationsList,
    required int totalCount,
    required bool hasMore,
    required bool isLoadingMore,
  }) = _DashboardDataState;
  factory DashboardDataState.initial() => DashboardDataState(
        getDashboardDataStatus: Status.initial(),
        dashboardDataModel: const DashboardDataModel(),
        getNotificationsListStatus: Status.initial(),
        notificationsList: [],
        hasMore: true,
        isLoadingMore: false,
        totalCount: 0,
      );
}
