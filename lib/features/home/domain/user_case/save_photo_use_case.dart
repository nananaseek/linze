import 'package:linze/features/home/data/services/gallery_service_imp.dart';

class SavePhotoUseCase {
  final GalleryServiceImp repository;

  SavePhotoUseCase({required this.repository});

  Future<void> call(String path) async {
    await repository.saveImageToGallery(path);
  }
}
