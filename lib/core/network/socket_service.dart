import 'package:socket_io_client/socket_io_client.dart' as io;
import '../constants/api_constants.dart';

class SocketService {
  SocketService._();
  static final SocketService instance = SocketService._();

  io.Socket? _socket;

  void connect(String accessToken) {
    _socket?.dispose();
    _socket = io.io(
      ApiConstants.baseUrl.replaceAll('/api', ''), // socket.io needs the bare host, not /api
      io.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .setAuth({'token': accessToken, 'role': 'driver'})
          .build(),
    );
    _socket!.connect();
  }

  void onIncomingRide(void Function(Map<String, dynamic>) callback) {
    _socket?.on('ride:incoming', (data) => callback(Map<String, dynamic>.from(data)));
  }

  void onRideTaken(void Function(String rideId) callback) {
    _socket?.on('ride:taken', (data) => callback(data['rideId'] as String));
  }

  void joinRide(String rideId) {
    _socket?.emit('ride:join', {'rideId': rideId});
  }

  void sendLocation(String rideId, double lat, double lng) {
    _socket?.emit('driver:location', {'rideId': rideId, 'latitude': lat, 'longitude': lng});
  }

  void disconnect() {
    _socket?.dispose();
    _socket = null;
  }
}