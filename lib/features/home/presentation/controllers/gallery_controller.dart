import 'package:linze/features/home/domain/user_case/get_premision_provider.dart';
import 'package:linze/features/home/domain/user_case/save_photo_provider.dart';
import 'package:linze/features/home/domain/user_case/take_image_from_gallery_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gallery_controller.g.dart';

@riverpod
class GalleryController extends _$GalleryController {
  @override
  AsyncValue<void> build() => AsyncData(null);

  Future<void> getPremision() async {
    state = const AsyncLoading();
    final useCase = ref.read(getPremisionUseCaseProvider);

    await useCase();

    state = const AsyncData(null);
  }

  Future<String?> importImage() async {
    state = const AsyncLoading();

    final takeImage = ref.read(takeImageFromGalleryUserCaseProvider);
    final savePhoto = ref.read(savePhotoUseCaseProvider);

    final path = await takeImage();

    if (path != null) {
      await savePhoto(path);
      state = const AsyncData(null);
      return path;
    }
    else {
      state = const AsyncData(null);
    }
    return null;
  }
}
