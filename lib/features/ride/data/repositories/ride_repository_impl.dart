import '../../../../core/network/socket_service.dart';
import '../../domain/entities/ride_entity.dart';
import '../../domain/entities/ride_summary_entity.dart';
import '../../domain/repositories/ride_repository.dart';
import '../datasources/ride_remote_datasource.dart';

class RideRepositoryImpl implements RideRepository {
  RideRepositoryImpl({required RideRemoteDataSource remoteDataSource})
      : _remote = remoteDataSource;

  final RideRemoteDataSource _remote;

  @override
  Future<RideEntity?> getIncomingRide() => _remote.getIncomingRide();

  @override
  Future<RideEntity> acceptRide(String rideId) => _remote.acceptRide(rideId);

  @override
  Future<void> rejectRide(String rideId) => _remote.rejectRide(rideId);

  @override
  Future<void> reachedPickup(String rideId) => _remote.reachedPickup(rideId);

  @override
  Future<void> startRide(String rideId, String otp) => _remote.startRide(rideId,otp);


  @override
  Future<RideSummaryEntity> completeRide(String rideId) =>
      _remote.completeRide(rideId);

  @override
  void joinRideRoom(String rideId) => SocketService.instance.joinRide(rideId);

  @override
  void streamLocation(String rideId, double lat, double lng) =>
      SocketService.instance.sendLocation(rideId, lat, lng);
}