import 'package:linze/features/documents/domain/repository/document_font_size_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'document_font_size_repository_imp.dart';

part 'document_font_size_provider.g.dart';

@riverpod
IDocumentFontSizeRepository documentFontSizeRepository (Ref ref) {
  return DocumentFontSizeRepositoryImp();
}