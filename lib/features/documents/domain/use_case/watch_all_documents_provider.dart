import 'package:linze/features/documents/data/repository/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'watch_all_documents_user_case.dart';

part 'watch_all_documents_provider.g.dart';

@riverpod
WatchAllDocumentsUserCase watchAllDocumentsUserCase (Ref ref) {
  final repo = ref.watch(documentRepositoryProvider);
  return WatchAllDocumentsUserCase(repo);
}