import 'package:linze/features/documents/domain/use_case/init_document_provider.dart';
import 'package:linze/features/home/data/repository/home_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'init_document_data_user_case.dart';

part 'init_document_data_provider.g.dart';

@riverpod
InitDocumentDataUserCase initDocumentDataUserCase (Ref ref) {
  final repository = ref.watch(homeRepositoryProvider);
  final addDocument = ref.watch(initDocumentUserCaseProvider);
  return InitDocumentDataUserCase(repository, addDocument);
}