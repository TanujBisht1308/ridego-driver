import 'package:dio/dio.dart';
import '../../../../core/constants/api_constants.dart';
import '../../domain/entities/earnings_entity.dart';

class EarningsRemoteDataSource {
  EarningsRemoteDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Future<EarningsEntity> getEarnings(EarningsFilter filter) async {
    final response = await _dio.get(
      ApiConstants.earnings,
      queryParameters: {'filter': filter.name},
    );
    final data = response.data['data'] as Map<String, dynamic>;
    return EarningsEntity(
      filter: filter,
      totalEarnings: (data['totalEarnings'] as num).toDouble(),
      totalRides: data['totalRides'] as int,
      rideFare: (data['rideFare'] as num).toDouble(),
      incentives: (data['incentives'] as num).toDouble(),
      tips: (data['tips'] as num).toDouble(),
      deductions: (data['deductions'] as num).toDouble(),
      totalEarningsAfterDeductions:
          (data['totalEarningsAfterDeductions'] as num).toDouble(),
      paymentMethod: data['paymentMethod'] as String,
    );
  }

  Future<List<TransactionEntity>> getTransactions() async {
    final response = await _dio.get(ApiConstants.transactions);
    final list =
        response.data['data']['transactions'] as List<dynamic>;
    return list
        .map((e) => TransactionEntity(
              rideId: e['rideId'] as String? ?? '',
              passengerName: e['passengerName'] as String? ?? 'Unknown',
              pickupAddress: e['pickupAddress'] as String? ?? '',
              dropAddress: e['dropAddress'] as String? ?? '',
              fare: (e['fare'] as num).toDouble(),
              date: DateTime.parse(e['date'] as String),
              paymentMethod: e['paymentMethod'] as String? ?? 'Cash',
            ))
        .toList();
  }
}