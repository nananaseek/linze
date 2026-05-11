import 'package:linze/features/documents/data/repository/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'add_document_user_case.dart';

part 'add_document_provider.g.dart';

@riverpod
AddDocumentUserCase addDocumentUserCase(Ref ref) {
  final repo = ref.watch(documentRepositoryProvider);
  return AddDocumentUserCase(repo);
}