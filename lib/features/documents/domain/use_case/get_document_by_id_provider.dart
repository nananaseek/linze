import 'package:linze/features/documents/data/repository/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'get_document_by_id_user_case.dart';

part 'get_document_by_id_provider.g.dart';

@riverpod
GetDocumentByIdUserCase getDocumentByIdUserCase (Ref ref) {
  final repo = ref.watch(documentRepositoryProvider);
  return GetDocumentByIdUserCase(repo);
}