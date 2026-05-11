import 'package:linze/core/database/database_provider.dart';
import 'package:linze/features/documents/data/repository/document_repository_imp.dart';
import 'package:linze/features/documents/domain/repository/i_document_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_provider.g.dart';

@riverpod
IDocumentRepository documentRepository(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return DocumentRepositoryImpl(db);
}
