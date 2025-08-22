part of 'dashboard_data_bloc.dart';

@freezed
abstract class DashboardDataState with _$DashboardDataState {
  factory DashboardDataState({
    required Status getDashboardDataStatus,
    required DashboardDataModel dashboardDataModel,
  }) = _DashboardDataState;
  factory DashboardDataState.initial() => DashboardDataState(
        getDashboardDataStatus: Status.initial(),
        dashboardDataModel: const DashboardDataModel(),
      );
}
