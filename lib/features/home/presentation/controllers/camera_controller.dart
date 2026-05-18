import 'package:camera/camera.dart';
import 'package:linze/features/home/data/services/camera_service_repository.dart';
import 'package:linze/features/home/domain/user_case/save_photo_provider.dart';
import 'package:linze/features/home/domain/user_case/take_photo_from_camera_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_controller.g.dart';

@riverpod
class HomeCameraControler extends _$HomeCameraControler {
  @override
  FutureOr<CameraController?> build() async {
    final service = ref.watch(cameraServiceProvider);

    ref.onDispose(() async {
      await service.dispose();
      print("Провайдер закрито, камера вимкнена!");
    });

    await service.init();

    return service.controller;
  }

  Future<void> turnOffCamera() async {
    final service = ref.watch(cameraServiceProvider);
    await service.dispose();
    print('Camera off');
  }

  void turnOnCamera() {
    ref.invalidateSelf();
    print('Camera on');
  }

  Future<String> takePhoto() async {
    final takePhoto = ref.read(takePhotoFromCameraUseCaseProvider);
    final savePhoto = ref.read(savePhotoUseCaseProvider);

    final photo = await takePhoto();
    await savePhoto(photo.path);
    return photo.path;
  }
}
