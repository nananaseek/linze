import 'package:linze/features/documents/data/repository/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'delete_document_user_case.dart';

part 'delete_document_provider.g.dart';

@riverpod
DeleteDocumentUserCase deleteDocumentUserCase(Ref ref) {
  final repo = ref.watch(documentRepositoryProvider);
  return DeleteDocumentUserCase(repo);
}