import 'package:linze/features/documents/domain/use_case/init_document_provider.dart';
import 'package:linze/features/home/data/repository/home_provider.dart';
import 'package:linze/features/home/domain/user_case/test_create_loading_document_data_user_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_create_loading_document_data_provider.g.dart';

@riverpod
TestCreateLodingDocumentDataUserCase testCreateLoadingDocumentDataUserCase (Ref ref) {
  final repository = ref.watch(homeRepositoryProvider);
  final addDocument = ref.watch(initDocumentUserCaseProvider);
  return TestCreateLodingDocumentDataUserCase(repository, addDocument);
}