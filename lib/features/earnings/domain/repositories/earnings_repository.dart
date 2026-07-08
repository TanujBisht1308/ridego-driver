import '../entities/earnings_entity.dart';

abstract class EarningsRepository {
  Future<EarningsEntity> getEarnings(EarningsFilter filter);
  Future<List<TransactionEntity>> getTransactions();
}