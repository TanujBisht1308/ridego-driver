import '../entities/dashboard_stats_entity.dart';

abstract class DashboardRepository {
  Future<DashboardStatsEntity> getTodayStats();
  Future<bool> getOnlineStatus();
  Future<void> setOnlineStatus(bool isOnline);
}