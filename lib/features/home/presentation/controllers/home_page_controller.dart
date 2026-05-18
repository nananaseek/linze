import 'package:linze/features/documents/presentation/controllers/document_controllers.dart';
import 'package:linze/features/home/domain/user_case/init_document_data_provider.dart';
import 'package:linze/features/home/domain/user_case/test_create_finished_document_data_provider.dart';
import 'package:linze/features/home/domain/user_case/test_create_loading_document_data_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_controller.g.dart';

@riverpod
class HomePageController extends _$HomePageController {
  @override
  void build() {
    
  }

  // TODO delete this method in prod
  Future<void> deleteAllDB() async => await ref.read(documentControllerProvider.notifier).deleteAllDB();
  
  Future<void> initDocumentFromCamera({required String name, required String imgPath,}) async {
    final usecase = ref.read(initDocumentDataUserCaseProvider);
    await usecase(name: name, imgPath: imgPath);
  }

  Future<void> initDocumentFromGallery({required String imgPath,}) async {
    final usecase = ref.read(initDocumentDataUserCaseProvider);

    final imageName = imgPath.split('/').last;
    await usecase(name: imageName, imgPath: imgPath);

  }

  Future<void> testCreateLoadingDocument() async {
    final usecase = ref.read(testCreateLoadingDocumentDataUserCaseProvider);
    await usecase();
  }

  Future<void> testCreateFinishedDocument() async {
    final usecase = ref.read(testCreateFinishedDocumentDataUserCaseProvider);
    await usecase();
  }
}