part of 'dashboard_data_bloc.dart';

@freezed
class DashboardDataEvent with _$DashboardDataEvent {
  const factory DashboardDataEvent.getDashboardData() = _GetDashboardData;
  const factory DashboardDataEvent.getNotificationsList({required int limit,required int skip}) = _GetNotificationsList;
  const factory DashboardDataEvent.paginateNotificationsList({required int skip, required int limit}) = _PaginateNotificationsList;
}