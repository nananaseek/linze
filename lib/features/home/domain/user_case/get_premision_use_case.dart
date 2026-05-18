import 'package:linze/features/home/data/services/gallery_service_imp.dart';

class GetPremisionUseCase {
  final GalleryServiceImp repository;

  GetPremisionUseCase({required this.repository});

  Future<void> call() async {
    final hasPremisionRead = await repository.hasPremisionRead();
    final hasPremisionAlbumSave = await repository.hasPremisionSaveAlbum();

    if (!hasPremisionRead) {
      await repository.requestPremisionSave();
    }
    if (!hasPremisionAlbumSave) {
      await repository.requestPremisionSaveAlbum();
    }
  }
}