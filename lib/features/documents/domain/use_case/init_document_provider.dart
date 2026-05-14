import 'package:linze/features/documents/data/repository/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'init_document_user_case.dart';

part 'init_document_provider.g.dart';

@riverpod
InitDocumentUserCase initDocumentUserCase(Ref ref) {
  final repo = ref.watch(documentRepositoryProvider);
  return InitDocumentUserCase(repo);
}