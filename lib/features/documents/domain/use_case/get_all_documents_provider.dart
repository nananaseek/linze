import 'package:linze/features/documents/data/repository/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'get_all_documents_user_case.dart';

part 'get_all_documents_provider.g.dart';

@riverpod
GetAllDocumentsUserCase getAllDocumentsUserCase (Ref ref) {
  final repo = ref.watch(documentRepositoryProvider);
  return GetAllDocumentsUserCase(repo);
}