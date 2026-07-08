class ApiConstants {
  ApiConstants._();

  // Replace 192.168.1.x with your actual local IP from ipconfig
  // Must be on the same WiFi network as your phone
  static const String baseUrl = 'http://192.168.0.191:8000/api';

  // Auth
  static const String sendOtp = '/auth/send-otp';
  static const String verifyOtp = '/auth/verify-otp';
  static const String refreshToken = '/auth/refresh-token';
  static const String logout = '/auth/logout';

  // Driver
  static const String setupProfile = '/driver/profile/setup';
  static const String submitDocuments = '/driver/documents/submit';
  static const String driverProfile = '/driver/profile';
  static const String dashboardStats = '/driver/dashboard/stats';
  static const String onlineStatus = '/driver/status';

  // Ride
  static const String incomingRide = '/driver/ride/incoming';
  static const String acceptRide = '/driver/ride/accept';
  static const String rejectRide = '/driver/ride/reject';
  static const String reachedPickup = '/driver/ride/reached-pickup';
  static const String startRide = '/driver/ride/start';
  static const String completeRide = '/driver/ride/complete';
  static const String rideHistory = '/driver/ride/history';

  // Earnings
  static const String earnings = '/driver/earnings';
  static const String transactions = '/driver/earnings/transactions';

  // Settings
  static const String settings = '/driver/settings';
}