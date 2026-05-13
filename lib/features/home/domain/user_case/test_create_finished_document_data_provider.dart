import 'package:linze/features/documents/domain/use_case/add_document_provider.dart';
import 'package:linze/features/home/data/repository/home_provider.dart';
import 'package:linze/features/home/domain/user_case/test_create_finished_document_data_user_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_create_finished_document_data_provider.g.dart';

@riverpod
TestCreateFinishedDocumentDataUserCase testCreateFinishedDocumentDataUserCase (Ref ref) {
  final repository = ref.watch(homeRepositoryProvider);
  final addDocument = ref.watch(addDocumentUserCaseProvider);
  return TestCreateFinishedDocumentDataUserCase(repository, addDocument);
}