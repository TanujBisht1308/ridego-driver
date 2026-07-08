import '../entities/ride_entity.dart';
import '../entities/ride_summary_entity.dart';

abstract class RideRepository {
  Future<RideEntity?> getIncomingRide();
  Future<RideEntity> acceptRide(String rideId);
  Future<void> rejectRide(String rideId);
  Future<void> reachedPickup(String rideId);
  Future<void> startRide(String rideId, String otp);
  Future<RideSummaryEntity> completeRide(String rideId);
  void joinRideRoom(String rideId);
  void streamLocation(String rideId, double lat, double lng);
}