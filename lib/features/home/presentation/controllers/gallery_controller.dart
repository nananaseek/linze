import 'package:linze/features/home/data/services/gallery_service_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gallery_controller.g.dart';

@riverpod
class GalleryController extends _$GalleryController {
  @override
  AsyncValue<void> build() => AsyncData(null);

  Future<void> getPremision() async {
    state = const AsyncLoading();

    final service = ref.read(galleryServiceProvider);

    final hasPremisionRead = await service.hasPremisionRead();
    final hasPremisionAlbumSave = await service.hasPremisionSaveAlbum();

    if (!hasPremisionRead) {
      await service.requestPremisionSave();
    }
    if (!hasPremisionAlbumSave) {
      await service.requestPremisionSaveAlbum();
    }

      state = const AsyncData(null);
  }

  Future<String?> importImage() async {
    state = const AsyncLoading();

    final service = ref.read(galleryServiceProvider);
    
    final path = await service.takeImage();

    if (path != null) {
      await service.saveImageToGallery(path);
      state = const AsyncData(null);
      return path;
    }
    else {
      state = const AsyncData(null);
    }
    return null;
  }
}
