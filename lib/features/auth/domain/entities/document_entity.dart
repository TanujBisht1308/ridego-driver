import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_entity.freezed.dart';

enum DocumentType { drivingLicense, rcBook, insurance, vehiclePhoto }

@freezed
abstract class DocumentEntity with _$DocumentEntity {
  const factory DocumentEntity({
    required DocumentType type,
    required String title,
    required String subtitle,
    String? filePath,
    @Default(false) bool isUploaded,
    @Default(false) bool isVerified,
  }) = _DocumentEntity;
}