import '../../domain/entities/earnings_entity.dart';
import '../../domain/repositories/earnings_repository.dart';
import '../datasources/earnings_remote_datasource.dart';

class EarningsRepositoryImpl implements EarningsRepository {
  EarningsRepositoryImpl({required EarningsRemoteDataSource remoteDataSource})
      : _remote = remoteDataSource;

  final EarningsRemoteDataSource _remote;

  @override
  Future<EarningsEntity> getEarnings(EarningsFilter filter) =>
      _remote.getEarnings(filter);

  @override
  Future<List<TransactionEntity>> getTransactions() =>
      _remote.getTransactions();
}