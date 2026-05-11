import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linze/features/documents/domain/entity/document_entity.dart';

part 'document_state.freezed.dart';

@freezed
abstract class DocumentsState with _$DocumentsState {
  const factory DocumentsState({
    @Default([]) List<DocumentEntity> documents,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _DocumentsState;
}