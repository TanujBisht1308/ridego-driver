import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/di/providers.dart';
import '../../domain/entities/earnings_entity.dart';

part 'earnings_controller.freezed.dart';
part 'earnings_controller.g.dart';

@freezed
abstract class EarningsState with _$EarningsState {
  const factory EarningsState({
    @Default(false) bool isLoading,
    @Default(EarningsFilter.daily) EarningsFilter selectedFilter,
    EarningsEntity? earnings,
    List<TransactionEntity>? transactions,
    @Default(false) bool showTransactions,
    String? errorMessage,
  }) = _EarningsState;
}

@riverpod
class EarningsController extends _$EarningsController {
  @override
  EarningsState build() {
    _load();
    return const EarningsState(isLoading: true);
  }

  Future<void> _load() async {
    try {
      final earnings = await ref
          .read(earningsRepositoryProvider)
          .getEarnings(state.selectedFilter);
      state = state.copyWith(isLoading: false, earnings: earnings);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> setFilter(EarningsFilter filter) async {
    state = state.copyWith(isLoading: true, selectedFilter: filter);
    try {
      final earnings =
          await ref.read(earningsRepositoryProvider).getEarnings(filter);
      state = state.copyWith(isLoading: false, earnings: earnings);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> loadTransactions() async {
    state = state.copyWith(isLoading: true, showTransactions: true);
    try {
      final transactions =
          await ref.read(earningsRepositoryProvider).getTransactions();
      state = state.copyWith(isLoading: false, transactions: transactions);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }
}