import '../../domain/entities/ride_history_entity.dart';
import '../../domain/repositories/ride_history_repository.dart';
import '../datasources/ride_history_remote_datasource.dart';

class RideHistoryRepositoryImpl implements RideHistoryRepository {
  RideHistoryRepositoryImpl(
      {required RideHistoryRemoteDataSource remoteDataSource})
      : _remote = remoteDataSource;

  final RideHistoryRemoteDataSource _remote;

  @override
  Future<List<RideHistoryEntity>> getRides(RideHistoryStatus status) =>
      _remote.getRides(status);
}